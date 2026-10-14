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
