# TranssionCamera CM8 Port

Smali-level port of TranssionCamera 16.2.0.150 to the TECNO CM8 device tree.

The camera and its overlay (`TranCamera_Overlay_CM8_OP_ui5`) are built in the
device tree — this repo pins the smali changes and the self-contained asset
payload, and provides the packaging script used to assemble the APK.

## Repository layout

| Path | Contents |
|------|----------|
| `original/` | Stock APK + manifest + checksums (unmodified, firmware source) |
| `smali/` | classes.dex disassembly (6341 files) |
| `smali_classes2/` | classes2.dex disassembly (4928 files) |
| `smali_classes3/` | classes3.dex disassembly (7961 files) |
| `smali_classes4/` | classes4.dex disassembly (6073 files) |
| `smali_classes5/` | classes5.dex — HubSDK bridge incl. AssetFallback (17 files, not in stock APK) |
| `payload/` | Self-contained payload: ALL 465 `tr_product/etc/asset/TranssionCamera/` assets + 47 `tr_product/lib64/*.so` |
| `artifacts/` | Pinned assembled dex files (md5/sha256 in CHECKSUMS) |
| `docs/` | Asset provisioning contract and port notes |
| `scripts/` | reassemble.sh, verify.sh, build_selfcontained.sh, normalize-smali.sh |

## Changes vs stock

| Commit | Change | Files |
|--------|--------|-------|
| C2 | InteractiveUIManager null-guard | 1 (classes3) |
| C3 | MotionDetectSwitchUI, FlashSnapUIV2, FileUtil null-guards | 3 (classes4) |
| C4 | HubSDK bridge classes5 (new dex, not in stock) | 16 (classes5) |
| C5 | Verification hardening: stock-byte assertions, build/ reassembly policy, checksum emission | scripts/ |
| C6 | Pin artifacts + CHECKSUMS + CI workflow | artifacts/, CHECKSUMS\*, README.md |
| C7 | Self-containment: DocumentMode reads bundled model; AssetFallback extraction + asset-root hookup; full 465+47 payload | 1 (classes3), 2 (classes5), `payload/`, `scripts/build_selfcontained.sh` |

`ModeUIPolicy` and `ModeFeatureProvider` stay byte-identical to baseline —
mode order/config comes from the in-tree `TranCamera_Overlay_CM8_OP_ui5`
overlay, not from smali.

`DocumentMode.readModel()` now reads `DocDetectV15.xbin` from the APK's own
`assets/camasset/etc/asset/TranssionCamera/` (bundled payload), falling back to
`CamAssetManager.getAssetPath()`.

## Self-contained payload

All 465 `tr_product/etc/asset/TranssionCamera/` files and all 47
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
# Verify all trees round-trip clean
bash scripts/verify.sh

# Reassemble to dex
bash scripts/reassemble.sh

# Check against pinned checksums
md5sum -c CHECKSUMS.md5
sha256sum -c CHECKSUMS.sha256

# Assemble the self-contained APK (asserts ALL 465 assets + 47 libs embed)
bash scripts/build_selfcontained.sh build/TranssionCamera_selfcontained.apk
```

## Toolchain

- baksmali/smali 2.5.2 (debian)
- API level 34