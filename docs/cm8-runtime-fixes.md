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
| `smali_classes3/com/transsion/camera/app/BaseCameraActivity.smali` | `buildGotoGalleryIntent()`: after the existing package-clear, ask `PackageManager.resolveActivity()` about the finished intent and switch the action to the public `android.intent.action.VIEW` when nothing handles it. The data URI + mime type are already attached, so any installed gallery resolves it. |
| `smali_classes3/com/transsion/camera/app/PermissionActivity.smali` | `lambda$showGotoInstallGalleryOthers$1()`: the dialog button tries `ACTION_MAIN` + `CATEGORY_APP_GALLERY` first and only falls back to the Play Store listing when no gallery is installed at all. |

The fallback only engages when the stock path is unresolvable, so a present
`com.gallery20` (or Google Photos handling REVIEW) keeps stock behaviour.

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

