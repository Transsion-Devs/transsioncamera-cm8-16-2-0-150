# Asset Provisioning Contract

## Stock layout (16.2.0.150 firmware)

The stock firmware provisions TranssionCamera assets across three locations:

| Source | Destination | Count |
|--------|-------------|-------|
| `system_ext/app/TranssionCamera/TranssionCamera.apk` | APK (own assets) | — |
| `tr_product/etc/asset/TranssionCamera/` | `tr_product` partition | 465 files |
| `tr_product/lib64/*.so` | `tr_product` partition | 47 libs |
| `odm/etc/asset/camera/` | `odm` partition | 671 files |

The app locates partition assets via `CamAssetManager.getAssetPath()` →
`TranConfigsManager.getAsset()` → `TranThubConfigs` / `TranAospConfigs`
→ `TranConfigs.getAsset()`, which probes partition-rooted paths.

## Port model: self-contained APK

CM8 has no `tr_product` partition, and the camera is built with the in-tree
overlay rather than relying on extra partition provisioning. The port instead
embeds the full payload in the APK:

- `payload/etc/asset/TranssionCamera/**` (ALL 465 files) →
  `assets/camasset/etc/asset/TranssionCamera/**`
- `payload/lib64/**` (ALL 47 libs) → `lib/arm64-v8a/**`

`scripts/build_selfcontained.sh` assembles the APK from the stock base, the
pinned `artifacts/` dex and `payload/`, and FAILS unless every one of the 465
assets and 47 libs is present (exact-count self-containment check).

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

Known limitation: the `ITranConfigs.Instance()` shim (`thubutils/a`) falls
back to a default `ITranConfigs$a` (all getters return null) when the system
`thubutils.jar` is absent, so not every `CamAssetManager.getAssetPath()`
call site resolves the bundled payload — `DocumentMode` is wired directly as
the canonical consumer.

## Verification

```bash
# Reassemble the self-contained APK; asserts all 465 assets + 47 libs embed
bash scripts/build_selfcontained.sh build/TranssionCamera_selfcontained.apk

# CountAssets embedded (465 payload files under assets/camasset + dir entries)
unzip -Z1 build/TranssionCamera_selfcontained.apk | grep -c '^assets/camasset/'
```