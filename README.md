# TranssionCamera CM8 Port

Smali-level port of TranssionCamera **16.3.0.140** to the TECNO CM8 device tree.

The camera and its overlay (`TranssionCameraOverlay`) are built in the device tree
and signed as part of the ROM build. This repo pins the smali changes and the
self-contained asset payload, and provides the packaging script used to assemble
the APK that the tree consumes.

## Repository layout

| Path | Contents |
|------|----------|
| `original/` | Stock 16.3.0.140 APK + manifest + checksums (unmodified, firmware source) |
| `smali/` | classes.dex disassembly (6346 files) |
| `smali_classes2/` | classes2.dex disassembly (5011 files) |
| `smali_classes3/` | classes3.dex disassembly (7968 files) |
| `smali_classes4/` | classes4.dex disassembly (6158 files) |
| `smali_classes5/` | classes5.dex — HubSDK bridge incl. AssetFallback (17 files, not in stock APK) |
| `payload/` | Self-contained payload: ALL 466 `tr_product/etc/asset/TranssionCamera/` assets + 46 `tr_product/lib64/*.so` |
| `artifacts/` | Pinned assembled dex files (md5/sha256 in CHECKSUMS) |
| `docs/` | Asset provisioning contract and port notes |
| `scripts/` | reassemble.sh, verify.sh, build_selfcontained.sh, normalize-smali.sh |

The stock 16.3.0.140 APK ships four dex files (all `dex.039`); the port adds
`classes5.dex` for the HubSDK bridge.

## Changes vs stock 16.3.0.140

| Change | Files |
|--------|-------|
| `InteractiveUIManager` null-guard on `DeviceSetting` | 1 (classes3) |
| `MotionDetectSwitchUI`, `FlashSnapUIV2`, `FileUtil` null-guards | 3 (classes4) |
| `DocumentMode.readModel()` reads the bundled model from APK assets | 1 (classes3) |
| HubSDK bridge (`AssetFallback`, asset-root hookup) | classes5 (new dex) |
| `FlowBusAdapterFactory.getAdapter` reflective-load guard | 1 (classes dex0) |

Delta versus the stock 16.3.0.140 disassembly is exactly those six patched
files across `smali/`, `smali_classes3/` and `smali_classes4/`;
`smali_classes2/` and `smali_classes5/` are byte-identical to their sources.

See `docs/reflective-dependency-audit.md` for the full audit of the 96
externally-referenced `com.transsion.*` names. Short version: the ROM ships no
Transsion APEX and no `thubutils.jar`, only `AICoreNexusFlow.apk` supplies
referenced classes, and just 5 of the 78 unresolved names are real reflective
class loads. Three were already guarded; the two AI adapters
(`CVEngineAdapter`, `AecAsrAdapter`) are absent from the ROM and were loaded
unguarded, so `getAdapter` now returns a logged `null` instead of throwing.

`ModeUIPolicy` and `ModeFeatureProvider` stay byte-identical to the stock
baseline — mode order/config comes from the in-tree `TranssionCameraOverlay`,
not from smali.

Patched methods use canonical `:cond_*` labels so every tree round-trips
byte-identically through `scripts/verify.sh`.

## Self-contained payload

All 466 `tr_product/etc/asset/TranssionCamera/` files and all 46
`tr_product/lib64/*.so` are committed under `payload/` and embedded into the
APK (see `docs/asset-provisioning.md` for the wiring):

- `payload/etc/asset/TranssionCamera/**` → `assets/camasset/etc/asset/TranssionCamera/**`
- `payload/lib64/*.so` → `lib/arm64-v8a/*.so`

`AssetFallback` (classes5) extracts every `assets/camasset/**` entry to
`/data/data/com.transsion.camera/files/apkasset/` on first run, and
`thubutils/b.b()` prepends that root, so partition-probe `getAsset` paths also
resolve the bundled payload. No `tr_product`/`system_ext` provisioning is
required.

## Verify + reassemble

```bash
# Verify all trees round-trip clean (also asserts stock-byte-identity files)
bash scripts/verify.sh

# Reassemble to dex
bash scripts/reassemble.sh

# Re-pin the shipped dex + regenerate CHECKSUMS.md5 / CHECKSUMS.sha256
bash scripts/reassemble.sh --to-artifacts

# Check against pinned checksums
md5sum -c CHECKSUMS.md5
sha256sum -c CHECKSUMS.sha256

# Assemble the self-contained APK (asserts ALL 466 assets + 46 libs embed).
# Output is intentionally left unsigned: the ROM build signs the camera.
bash scripts/build_selfcontained.sh build/TranssionCamera_selfcontained.apk
```

`build_selfcontained.sh` mirrors the stock Stored/Deflated split so entries read
via `openFd()`/`openRawResourceFd()` (`resources.arsc`, `classes*.dex`, all
`lib/arm64-v8a/*.so`, all audio) are stored uncompressed.

## Toolchain

- baksmali/smali 2.5.2 (debian)
- API level 35 (matches the stock dex format `dex.039` / `targetSdkVersion 35`)
