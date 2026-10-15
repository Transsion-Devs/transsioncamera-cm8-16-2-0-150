# CM8 runtime fixes

On-device defects of TranssionCamera **16.3.0.140** on the TECNO CM8 device
tree, plus the smali patches that address them. All three were diagnosed offline
against the stock `CM8-16.3.0.140SP29` firmware plus the `frameworks/base` source
of the same tree, and verified on device with `pix*.log` captures.

## 1. Thumbnail → gallery opens the Google Photos Play Store listing

### Symptom

Tapping the thumbnail (or the gallery shortcut) after a capture pops the
`need_gallery_title` prompt, and its button launches
`market://details?id=com.google.android.apps.photos` — even when a gallery app
is installed and registered for `android.intent.action.VIEW`.

### Root cause

`BaseCameraActivity.buildGotoGalleryIntent()` builds the review intent with the
Transsion-private action `com.android.camera.action.REVIEW` and picks the target
package from `CameraUtil.getChoseGallery(pm, CustomConfigUtil.mUseGooglePhotosDefault)`:

* `use_google_photos_default=false` on CM8, so `getChoseGallery` returns `0` and
  the intent targets `com.gallery20` (the Transsion gallery, which the CM8
  firmware does not ship).
* The method clears the package when `com.gallery20` does not resolve
  (`queryIntentActivities(...).isEmpty()`), but keeps the private REVIEW action.
  Nothing on CM8 handles REVIEW, so `startActivity` throws
  `ActivityNotFoundException` → `gotoGallery()` catch →
  `showGotoInstallGallery()` → `PermissionActivity.showGotoInstallGalleryOthers()`,
  whose positive button opens the Play Store listing unconditionally.

Confirmed in `pix8.log`: the launched intent was
`act=com.android.camera.action.REVIEW ... cmp=com.google.android.apps.photos/.pager.HostPhotoPagerActivity`
(the pre-patch build), followed by the `ActivityNotFoundException` handler.

### Patch

| File | Change |
|------|--------|
| `smali_classes3/com/transsion/camera/app/BaseCameraActivity.smali` | `buildGotoGalleryIntent()`: after the existing package-clear, probe with `PackageManager.resolveActivity(intent, MATCH_DEFAULT_ONLY)` — the same resolution `startActivity` performs — and when nothing can be launched, clear the intent package and switch the action to the public `android.intent.action.VIEW`. The data URI + mime type are already attached, so any installed gallery resolves it. |
| `smali_classes3/com/transsion/camera/app/PermissionActivity.smali` | `lambda$showGotoInstallGalleryOthers$1()`: the dialog button probes `ACTION_MAIN` + `CATEGORY_APP_GALLERY` (`MATCH_DEFAULT_ONLY`) first and only falls back to the Play Store listing when no gallery is installed at all. |

`MATCH_DEFAULT_ONLY` is load-bearing: with a plain `0` flag `resolveActivity`
also reports filters that never declare `CATEGORY_DEFAULT`, which `startActivity`
refuses, so the probe would claim a handler exists exactly when the launch still
throws. The fallback only engages when the stock path is not launchable, so a
present `com.gallery20` (or Google Photos handling REVIEW) keeps stock behaviour;
on the test device `pix7.log`/`pix8.log` show REVIEW resolving to Google Photos
(`cmp=com.google.android.apps.photos/.pager.HostPhotoPagerActivity`) and
launching normally, i.e. the fallback stays inactive there.

The rewrite is guarded by `if-nez v3, :cond_153`, where `v3` is the
`resolveActivity()` result: a **non-null** result (a launchable REVIEW handler)
branches past the rewrite and keeps stock behaviour, while a **null** result
(the unhandled REVIEW action on CM8) falls through to clear the package and set
`ACTION_VIEW`. Recall `if-eqz` branches when the value is **zero/null** and
`if-nez` when it is **non-zero**; the guard was first committed as `if-eqz`,
which skipped the rewrite exactly when it was needed and left the
`[gotoGallery] Couldn't view` / Play Store nag in place. `if-nez` is correct.

## 2. Aux preview freezes (capture session fails with status -22)

### Symptom

Modes that show the auxiliary (secondary) preview freeze it: the aux view stays
black while the main preview keeps running. `pix8.log`:

```
[7-aidl-session::configureStreams] Stream{id:1, width:312, height:418, format:0x22 ...}
checkStream unsupported size 312x418 for format 0x22
configureStreams, status=-22
[onConfigureFailed] create photo session
mSession is null in setRepeatingRequest
```

### Root cause

The HAL takes the aux stream size from the *producer default buffer size* of the
`SurfaceTexture` that reaches `createCaptureSession()`:
`OutputConfiguration.getConfiguredSize()` → `updateCachedSurfaceSize()` →
`SurfaceUtils.getSurfaceSize()` → `nativeDetectSurfaceDimens()` (i.e.
`ANativeWindow_getWidth/Height`); the MTK HAL then copies it into
`streamInfo->width/height` in `Camera3Device.cpp`.

The app asks for 320x240 (`GLSurfaceViewController.setAuxPreviewSize()`) and
asserts it through `SurfaceTexture.setDefaultBufferSize()` from
`onSurfaceTextureAvailable()` / `onSurfaceTextureSizeChanged()`. But
`TextureView` re-points the same producer at its own layout size in
`getTextureLayer()` (line 480), `onSizeChanged()` (line 458) and the
`setSurfaceTexture()` path (line 511 of
`frameworks/base/core/java/android/view/TextureView.java`). The aux view is the
`preview_aux_ui` `TextureView` (120dp x 160dp = **312x418** at 416dpi), so a late
layout/draw pass leaves the producer at the view size and the app's re-assert —
which only runs from TextureView callbacks — already happened. The HAL is then
asked for an unsupported 312x418 private stream, `configureStreams` fails
(-22/EINVAL), `mSession` stays null and the aux preview never receives frames.

### Patch

| File | Change |
|------|--------|
| `smali_classes3/.../ui/preview/GLSurfaceViewController$MySurfaceTextureListener.smali` | `onSurfaceTextureUpdated()` (previously an empty stub) re-asserts `setDefaultBufferSize(mAuxPreviewWidth, mAuxPreviewHeight)` on every TextureView update, i.e. in the same pass that re-points the buffer, so the clobber is undone within the frame. |
| `smali_classes3/.../common/mode/CameraOutputSurface.smali` | `requestDataChannel()` re-asserts the same size immediately before `new Surface(mAuxSurface)`, closing the window between the last UI pass and `createCaptureSession()`. |

Both guards are no-ops while `mAuxPreviewWidth/Height` are 0, so devices whose
aux view size already equals the camera size are unaffected.

## 3. "High Pixel" (SuperDefinition) never resolves its 50MP entry

### Symptom

The `key_super_definition` setting is present and reports
`supportList = [off, on]` (default `off`), but its UI spec resolves the *default*
info: `createSupportedEntries` logs `... [off, on] ,mShouldEscape false` and the
entry arrays are immediately nulled (`getSupportedEntryValues is null, return
default entry values.`), so the top-bar/pop UI falls back to the app's generic
`[off, on, billion]` entries — generic and 200MP drawables, no "50MP" hint, and a
`billion` entry the setting does not support.

### Root cause

`SuperDefinitionSettingUISpec.findSuitableInfo(cameraId, streamIds)`:

1. The lookup key is `streamIds[0]` when present (CM8: `"0"`), and is only
   replaced by `CameraRepository.getHighDefinitionBackCamera()` /
   `getHighDefinitionFrontCamera()` when a vendor ships a dedicated
   high-definition camera (framework ids `"37"`/`"39"`). CM8 exposes ids `0`-`7`
   only, so both are null and the back camera stays keyed on its stream id.
2. `CameraDeviceInfo.getLargestSupportedPictureSize(key)` reports 4096x3072 =
   12.58MP for that camera, which is below the hard-coded 15MP gate, so the
   method returns `mDefaultInfo` before it ever reaches the `ALL_INFO_MAP` lookup.
3. `createSupportedEntries()` consequently nulls
   `mSupportedEntries`/`mSupportedEntryValues`/`mSupportedEntryDrawables`, and
   `SettingUISpec.getSupportedEntryValues()` hands the UI the generic
   `super_definition_setting_entry_values` array instead of the device's.

CM8 *is* a 50MP device, it just never reports it in this shape: the stock
`TranCamera_Overlay` declares `super_definition_back_mp` = `super_definition_front_mp`
= `50`, and the HAL runs the full-size mode (`(8192x6144)@10 sensorMode:7(CUSTOM7)`),
while the app caps the user-selectable JPEG list at the 4-in-1 size
(`PictureSizeParametersConfig.setCameraCapabilities` → `removeSizeLargerThan`).
The 50MP info is therefore the correct one: `ALL_INFO_MAP[0x32]` carries
`mOnValue = 50`, `super_definition_50m_off` / `super_definition_50m_on`.

### Patch

`smali_classes4/com/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec.smali`
— `findSuitableInfo()`: when the computed MP is below the 15MP gate, clamp it to
`50.0f` (`0x42480000`) and continue into the nearest-info lookup instead of
returning `mDefaultInfo`. The lookup then resolves `ALL_INFO_MAP[0x32]`, the
entries are filtered against the setting's real `[off, on]` support list, and the
UI shows the 50MP off/on drawables plus the "50MP" hint.

The gate is `cmpg-float p2, p1, p2` (`p2 = cmp(mp, 15.0f)`) followed by
`if-gez p2, :cond_5c`. Recall `if-gez` branches when the result is **>= 0**, so
`mp >= 15` branches past the clamp and `mp < 15` falls through to
`p1 = 50.0f`. The guard was first committed as `if-ltz` (branch when **< 0**),
which clamped only for `mp >= 15` and left CM8's 12.58MP on the raw lookup path
— the first flashed build therefore logged `findSuitableInfo: 12.582912 --> 16`
instead of `50.0 --> 50`. `if-gez` is the correct polarity.

The capture path is stock and unchanged: selecting `on` already sets the
super-definition/remosaic vendor tags
(`CameraParameters#setSuperDefinitionMode` / `setRemosaicMode`), and
`SuperDefinition.updateSuperDefinitionValue()` does not force `off` on CM8
because no dedicated high-definition camera id is reported.

The clamp only triggers when no dedicated high-definition camera exists *and* the
resolved camera reports <15MP, so devices with the vendor high-definition camera
(ids `37`/`39`) or with a real >15MP JPEG size keep the stock resolution path.

## Verification on device

The patched APK is the vendor blob the ROM build picks up
(`vendor/tecno/CM8/proprietary/system_ext/app/TranssionCamera/TranssionCamera.apk`);
the build re-signs it with the platform certificate, so compare the *dex*, not
the APK:

```bash
adb pull /system_ext/app/TranssionCamera/TranssionCamera.apk /tmp/TranssionCamera.apk
unzip -p /tmp/TranssionCamera.apk classes3.dex | md5sum   # == artifacts/smali_classes3.dex
unzip -p /tmp/TranssionCamera.apk classes4.dex | md5sum   # == artifacts/smali_classes4.dex
```

The expected md5 values are the ones pinned in `CHECKSUMS.md5`. Then, with a
`adb logcat -d > pix9.log` capture:

| Fix | Expected evidence |
|-----|-------------------|
| Gallery hand-off | `CamAp_CameraUtil: isPackageNameEnable NameNotFoundException: com.gallery20` still appears (the CM8 firmware ships no Transsion gallery), but the start is now `act=android.intent.action.VIEW dat=content://media/... typ=image/jpeg` and reaches the installed gallery. No `[gotoGallery] Couldn't view ...` and no `market://details?id=com.google.android.apps.photos` intent. If Google Photos is installed and handles REVIEW, the stock `cmp=com.google.android.apps.photos/.pager.HostPhotoPagerActivity` start is kept — that is expected, not a failure. |
| Aux preview | In a mode with the aux preview, the capture session logs `Stream{id:1, width:320, height:240 ...}` with no `checkStream unsupported size ...`, no `configureStreams, status=-22` and no `mSession is null in setRepeatingRequest`, and the aux view shows frames. |
| High Pixel | `SuperDefinitionSettingUISpec` now logs `findSuitableInfo: 50.0 --> 50, ...` (previously the method returned `mDefaultInfo` before reaching that log), the SuperDefinition pop-up lists off/on with the 50MP drawables and hint, and selecting `on` writes the super-definition/remosaic vendor tags on the capture path. `SuperDefinition: initValueAndSupport` keeps `supportList = [off, on]`. |

### Known limitation

The gallery fallback is a *pre-flight* probe, and `gotoGallery()` still shows the
stock nag when a launchable REVIEW handler exists but fails at launch time (e.g.
the target app is suspended) — that path throws `SecurityException` from
`startActivity`, which the probe cannot see. Removing the nag entirely would mean
retrying `ACTION_VIEW` inside the `gotoGallery()` catch handler, which also has
to re-arm `mGoingToGallery`/`setGoingToGalleryFlag(true)` for the camera
lifecycle; that is deliberately left out until a device log shows the probe is
insufficient.


