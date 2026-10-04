# Reflective dependency audit (CM8 16.3.0.140)

Scope: every `com.transsion.*` name the camera references as a **string**, which
is how it reaches classes outside its own dex. Those names are candidates for
`Class.forName` and friends; most are actually config keys or intent actions.

Method:

1. Extract every `const-string "com.transsion.*"` from all five smali trees.
2. Drop names the camera itself defines (a `.smali` file exists for the class
   or its outer class).
3. Keep names whose final segment starts uppercase, i.e. class-shaped rather
   than a tuning key.
4. Resolve each survivor against the custom ROM output
   (`out/target/product/CM8`) by scanning dex payloads of every jar/apk/apex.
5. Classify each reference by how it is actually used at the call site.

## Totals

| Stage | Count |
|-------|-------|
| `com.transsion.*` string constants | 562 |
| Class-shaped (`UpperCamel` final segment) | 255 |
| Not defined by the camera APK | 96 |
| Provided by the ROM | 18 (all `hubsdk`, all also in the stock camera APK) |
| Genuinely absent from both | 78 |
| Of those, real reflective class loads | 5 |

The 78 "missing" names are mostly not classes at all. They fall into:

- **Intent actions** (4): `com.transsion.camera.action.NEW_PICTURE`,
  `NEW_VIDEO`, `START_SPECIFY_MODE`, `MODE_CHANGED_ACTION`. Compared as
  strings, never loaded.
- **Vconfig/tuning keys** (9): `com.transsion.MegHumanMode`,
  `...dv_sdk.DVResourceManager`, `...timelapsemode.TimelapsePhotoModeEntry`, and
  similar. Looked up as config map keys.
- **Mode-entry / plugin class names** (~45): `GoProModeEntry`,
  `MovieModeEntry`, `ARCoreModeEntry`, `SuperMoonModeEntry`,
  `TimelapsePhotoModeEntry`, `DVVideoModeEntry`, `SdofPhotoModeEntry`, and the
  `FoldFlip*` proxy classes. These are feature-plugin identifiers resolved by
  the plugin framework against packages that are not installed on CM8. They are
  **also absent from the stock 16.3 camera APK**, so this is stock CM8
  behaviour, not a port regression -- the mode simply is not offered.
- **Tuning structs / misc strings** (remaining): never loaded as classes.

## What the ROM actually provides

The custom ROM ships **no** Transsion APEX and no
`system_ext/framework/thubutils.jar`. Stock 16.3 ships five Transsion APEXes
including `com.transsion.thub.core.apex` and an 8,657-byte `thubutils.jar`.
Neither is present in `out/target/product/CM8`.

That absence is expected and already handled: this port is deliberately
self-contained, and `ITranConfigs`/`IAppProperties` are rewired to bundled
classes5 singletons rather than loaded through `thubutils.jar`.

Framework classpath scan (`system/framework`, `system_ext/framework`,
`product/framework`, `vendor/framework`; 234 files, 114.8 MB) found only five
`com.transsion.*` descriptors, all in `mediatek-telephony-base.jar`
(`ITranTelephonyEx` and friends). The scanner is validated: it resolves 5,123
`android.*` descriptors inside `framework.jar`.

Whole-product scan of 567 dex-bearing jars/apks/apexes found exactly two
containers that supply camera-referenced names:

| Container | Supplies |
|-----------|----------|
| `product/app/AICoreNexusFlow/AICoreNexusFlow.apk` | `FlowDispatcherService`, `FileUpLoadAdapter`, `YoutubeSummaryAdapter` |
| `system_ext/app/TranssionCamera/TranssionCamera.apk` | 17 `hubsdk` classes (still the **stock** camera APK -- `proprietary-files.txt:1870` has not been switched yet) |

## The real risk: 5 unguarded reflective loads

| Class | Call site | Guarded? |
|-------|-----------|----------|
| `com.transsion.aicore.nexusflow.bus.CVEngineAdapter` | `smali/com/example/dispatcher_client/FlowBusAdapterFactory.smali` (`FlowBusType.GENERATE`) | **no** -- method had zero `.catch` |
| `com.transsion.aicore.speechsdk.bus.AecAsrAdapter` | same file (`FlowBusType.REALTIME_MEETING_SUMMARY_*`, `FILE_UPLOAD`, `OFFLINE_MEETING_SUMMARY`) | **no** |
| `com.transsion.flamboyant.FoldableDeviceManager` | `smali_classes4/com/transsion/widgetslib/util/InputDialogFoldEngine.smali` (`setCurrentState`) | yes |
| `com.transsion.log.TranLog` | `smali_classes4/com/transsion/hubsdk/aosp/trancare/TranAospTrancareNative.smali` | yes |
| `com.transsion.log.cloudengine.CloudEngine` | `smali_classes4/com/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper.smali` | yes |

Neither `CVEngineAdapter` nor `AecAsrAdapter` exists anywhere in the ROM -- not in
any jar, apk, apex, or the stock 16.3 tree. `AICoreNexusFlow.apk` ships
`FlowDispatcherService` (the binder surface) and the two `com.example.llmsdk`
adapters, but not the two Transsion AI adapters. `TranLog`, `CloudEngine`, and
`FoldableDeviceManager` are likewise absent from the ROM; the three guarded
call sites degrade gracefully.

`getAdapter` is reached from `FlowProcessor` (4 sites), `AtomicCapabilityManager`
init, and deinit. `FlowProcessor` wraps every site in
`.catch Ljava/lang/Exception`, and its methods throw
`IllegalStateException("cvEngineAdapter 不能为 null")` if the adapter is null, so
a null return is an expected, handled outcome. The two
`AtomicCapabilityManager` coroutine jobs are the exception: they have no catch
of their own and rely on the enclosing `initializeCapabilitiesWithParams`,
which catches `Exception` around the coroutine launch.

### Fix applied

`FlowBusAdapterFactory.getAdapter` now wraps the switch in a
`:try_start_0`/`:try_end_0` region with `Exception`, `Error`, and `catchall`
handlers. On a failed load it logs
`dispatcher_client / flow bus adapter unavailable` with the cause and returns
`null`, matching what callers already expect. `IllegalArgumentException` for a
genuinely unknown bus type still propagates, so the original contract is
unchanged.

This converts a hard `ClassNotFoundException` on the AI speech/visual bus into
a logged `null`, which callers already handle. It does not add the missing
adapters: with them absent, meeting-summary, file-upload, and CV-engine flows
degrade to "capability unavailable" rather than crashing the dispatcher.

## Consequences for the port

- Meeting-summary / speech features stay unavailable. This matches stock CM8,
  where the same classes are missing, so no regression.
- Nothing here requires the THUB APEX or `thubutils.jar`; the audit confirms the
  no-APEX self-contained architecture is not weakened by their absence.
- Remaining runtime risk is unmeasurable until the ROM is flashed and the AI CAM
  path is exercised on device.
