# Asset Provisioning Contract

## Stock layout (16.3.0.140 firmware)

The stock firmware provisions TranssionCamera assets across three locations:

| Source | Destination | Count |
|--------|-------------|-------|
| `system_ext/app/TranssionCamera/TranssionCamera.apk` | APK (own assets) | — |
| `tr_product/etc/asset/TranssionCamera/` | `tr_product` partition | 466 files |
| `tr_product/lib64/*.so` | `tr_product` partition | 46 libs |
| `odm/etc/asset/camera/` | `odm` partition | 671 files |

`system_ext/etc/asset/` does **not** exist in 16.3.0.140; the live stock asset
location is `/tr_product/etc/asset/TranssionCamera/`.

The app locates partition assets via `CamAssetManager.getAssetPath()` →
`TranConfigsManager.getAsset()` → `TranThubConfigs` / `TranAospConfigs`
→ `TranConfigs.getAsset()`, which probes partition-rooted paths. The resolved
path shape is `<root>/etc/asset/<namespace>/<asset>`, with the namespace being
the string passed to `TranConfigsManager.initialize()` (`"TranssionCamera"` for
the camera).

## Port model: self-contained APK

CM8 has no `tr_product` partition, and the camera is built with the in-tree
`TranssionCameraOverlay` rather than relying on extra partition provisioning.
The port instead embeds the full payload in the APK:

- `payload/etc/asset/TranssionCamera/**` (ALL 466 files) →
  `assets/camasset/etc/asset/TranssionCamera/**`
- `payload/lib64/**` (ALL 46 libs) → `lib/arm64-v8a/**`

`scripts/build_selfcontained.sh` assembles the APK from the stock base, the
pinned `artifacts/` dex and `payload/`, and FAILS unless every one of the 466
assets and 46 libs is present (exact-count self-containment check).

The APEX `/system/apex/com.transsion.thub.core.apex` is deliberately **not**
integrated: the HubSDK classes it would provide are carried inside the APK.

## Wiring (how the bundled payload resolves)

Stock partition-based lookup cannot see the embedded payload. Three changes
wire it:

1. `AssetFallback` (new, `smali_classes5/com/transsion/hubsdk/thubutils/`)
   - `ensure()`: resolves `sourceDir` (the running APK) and the extraction root
     `/data/data/com.transsion.camera/files/apkasset/`.
   - `extract()`: streams every `assets/camasset/**` zip entry
     (16-char prefix stripped) to `apkasset/<relPath>`, once per install
     (`apkasset/.done` marker), mirroring the partition layout.

2. `thubutils/b.b()` (classes5): asset-root list. It now calls
   `AssetFallback.ensure()` first and prepends `<files>/apkasset/` to the
   partition roots (`/tr_product/`, `/system_ext/`, …), so the descriptor-
   based `getAsset` chain can resolve bundled assets unchanged.

3. `DocumentMode.readModel()` (classes3): primary path reads the model
   directly from the APK's own assets via
   `AssetManager.open("camasset/etc/asset/TranssionCamera/DocDetectV15.xbin")`
   (zip entry `assets/camasset/etc/asset/TranssionCamera/DocDetectV15.xbin`),
   logging and falling back to `CamAssetManager.getAssetPath("DocDetectV15.xbin")`
   on failure.

### HubSDK instance resolution (rewired, no APEX)

Stock resolves `ITranConfigs` / `IAppProperties` through `thubutils/a`, which
builds a `PathClassLoader` over `ITranConfigs.CLASS_PATH`
(`/system/framework/thubutils.jar` — a path that exists on neither stock nor
CM8; stock only has `/system_ext/framework/thubutils.jar`) and then gates the
load behind `thubutils/c.c(...)`, which consults the THUB feature config. When
the load is skipped, `thubutils/a` falls back to the `ITranConfigs$a` /
`IAppProperties$a` stubs, whose getters return null.

Both failure modes are removed. `ITranConfigs$-CC.Instance()` and
`IAppProperties$-CC.Instance()` now build the bundled implementation directly:

```
ITranConfigs$-CC.<clinit>   new com.transsion.common.thubutils.TranConfigs   -> sInstance
IAppProperties$-CC.<clinit> new com.transsion.common.thubutils.AppProperties -> sInstance
Instance()                  return sInstance
```

The instance is created in `<clinit>` and cached, so it is created once and is
race-free (class initialisation is VM-synchronised). The cache is essential, not
cosmetic: `TranConfigs.initialize(String)` stores the namespace in the *instance*
field `a`, so returning a fresh object per call would silently lose the
`"TranssionCamera"` namespace set by `CamAssetManager.init()`.

`thubutils/a`, `CLASS_INFO` and `CLASS_PATH` are left in place (stock, inert).
Verified: zero remaining `invoke` sites for `thubutils/a.a(String)`; the only
`/system/framework/thubutils.jar` references left are the two unused `CLASS_PATH`
field constants.

### Both adapter paths resolve

`TranConfigsManager` picks its adapter with
`TranVersion.isIntegratedThubCore(...)`. `THUBCORE_VERSION` is read reflectively
from `com.transsion.hubsdk.os.TranBuild`, which ships only inside the THUB APEX,
so on CM8 it degrades to the default `"0"` (the `<clinit>` is fully guarded and
logs rather than throwing). That selects the AOSP adapter, but **both** now work
in-APK:

| Adapter | How it loads `hubsdk.tranthubutils.TranConfigs` | Status |
|---------|---------------------------------------------------|--------|
| `TranAospConfigs` | `TranDoorMan.getClass()` → single-arg `Class.forName` (caller's loader = app dex) → finds classes5 | OK |
| `TranThubConfigs` | direct `new` of the classes5 class; delegates only to `mManager`, no other THUB dependency | OK |

Resolved chain:

```
CamAssetManager.getAssetPath(name)
  -> TranConfigsManager.getAsset(...)
    -> TranAospConfigs / TranThubConfigs
      -> hubsdk.tranthubutils.TranConfigs            (classes5, APEX shim)
        -> ITranConfigs.Instance()                   (rewired)
          -> common.thubutils.TranConfigs            (classes5, bundled impl)
            -> thubutils/b.b() roots  +  AssetFallback.ensure() / getAssetLazy()
              -> <files>/apkasset/etc/asset/TranssionCamera/<name>
```

## Verification

```bash
# Reassemble the self-contained APK; asserts all 466 assets + 46 libs embed
bash scripts/build_selfcontained.sh build/TranssionCamera_selfcontained.apk

# CountAssets embedded (466 payload files under assets/camasset + dir entries)
unzip -Z1 build/TranssionCamera_selfcontained.apk | grep -c '^assets/camasset/'
```
