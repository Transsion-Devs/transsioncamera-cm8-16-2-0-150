# TranssionCamera CM8 Port

Smali-level port of TranssionCamera 16.2.0.150 to the TECNO CM8 device tree.

## Repository layout

| Path | Contents |
|------|----------|
| `original/` | Stock APK + manifest + checksums (unmodified, firmware source) |
| `smali/` | classes.dex disassembly (6341 files) |
| `smali_classes2/` | classes2.dex disassembly (4928 files) |
| `smali_classes3/` | classes3.dex disassembly (7961 files) |
| `smali_classes4/` | classes4.dex disassembly (6073 files) |
| `smali_classes5/` | classes5.dex — HubSDK bridge (16 files, not in stock APK) |
| `artifacts/` | Pinned assembled dex files (md5/sha256 in CHECKSUMS) |
| `docs/` | Asset provisioning contract and port notes |
| `scripts/` | reassemble.sh, verify.sh, normalize-smali.sh |

## Changes vs stock

| Commit | Change | Files |
|--------|--------|-------|
| C2 | InteractiveUIManager null-guard | 1 (classes3) |
| C3 | MotionDetectSwitchUI, FlashSnapUIV2, FileUtil null-guards | 3 (classes4) |
| C4 | HubSDK bridge classes5 (new dex, not in stock; no AssetFallback — assets live on partitions, no APK payload) | 16 (classes5) |
| C5 | Verification hardening: stock-byte assertions, build/ reassembly policy, checksum emission | scripts/ |
| C6 | Pin artifacts + CHECKSUMS + CI workflow | artifacts/, CHECKSUMS\*, README.md |

Stock `ModeUIPolicy` and `ModeFeatureProvider` are byte-identical to baseline — no changes.
`DocumentMode.readModel()` uses stock `CamAssetManager` path — no changes needed since
`DocDetectV15.xbin` is provisioned to `system_ext` via blob list.

## Asset provisioning

See `docs/asset-provisioning.md`. All 465 `tr_product/etc/asset/TranssionCamera/`
files and 47 `tr_product/lib64/*.so` are re-homed to `system_ext` via
`device/tecno/CM8/proprietary-files.txt` blob list entries.

## Verify + reassemble

```bash
# Verify all trees round-trip clean
bash scripts/verify.sh

# Reassemble to dex
bash scripts/reassemble.sh

# Check against pinned checksums
md5sum -c CHECKSUMS.md5
sha256sum -c CHECKSUMS.sha256
```

## Toolchain

- baksmali/smali 2.5.2 (debian)
- API level 34
