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

### Known open item: `ITranConfigs.Instance()`

`ITranConfigs.Instance()` / `IAppProperties.Instance()` in classes5 delegate to
`$-CC.Instance()`, which loads `/system/framework/thubutils.jar`. That path does
not exist (stock only has `/system_ext/framework/thubutils.jar`), so the
`ITranConfigs$a` fallback is used and its getters return null — meaning not every
`CamAssetManager.getAssetPath()` call site resolves the bundled payload.
`DocumentMode` is wired directly as the canonical consumer.

`smali_classes5` already carries the two classes the stock THUB APEX would have
supplied (`com/transsion/hubsdk/tranthubutils/TranConfigs` and
`TranAppProperties`, byte-identical to the APEX `thub-common.jar` versions).
Remaining work is to rewire the interface `Instance()` methods to the bundled
`com.transsion.common.thubutils.*` implementations while preserving the
initialized namespace (it is stored in an instance field set by `initialize()`).

## Verification

```bash
# Reassemble the self-contained APK; asserts all 466 assets + 46 libs embed
bash scripts/build_selfcontained.sh build/TranssionCamera_selfcontained.apk

# CountAssets embedded (466 payload files under assets/camasset + dir entries)
unzip -Z1 build/TranssionCamera_selfcontained.apk | grep -c '^assets/camasset/'
```
