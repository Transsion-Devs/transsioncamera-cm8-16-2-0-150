# Asset Provisioning Contract

## Stock layout (16.2.0.150 firmware)

The stock firmware provisions TranssionCamera assets across three locations:

| Source | Destination | Count |
|--------|-------------|-------|
| `system_ext/app/TranssionCamera/TranssionCamera.apk` | APK (own assets) | — |
| `tr_product/etc/asset/TranssionCamera/` | `tr_product` partition | 465 files |
| `tr_product/lib64/*.so` | `tr_product` partition | 47 libs |
| `odm/etc/asset/camera/` | `odm` partition | 671 files |

The app locates assets via `CamAssetManager.getAssetPath()` →
`TranConfigsManager.getAsset()` → `TranThubConfigs` / `TranAospConfigs`
→ `TranConfigs.getAsset()`, which probes partition-rooted paths.

## Port layout (CM8 device tree)

This port has no `tr_product` partition. All 465 files are re-homed to
`system_ext` via the device tree blob list (`proprietary-files.txt`):

The 47 `tr_product/lib64/*.so` are similarly re-mapped to `system_ext/lib64/`.

`CamAssetManager` finds them unchanged because `TranConfigs` probes
`system_ext/etc/asset/TranssionCamera/` as a valid asset root.

## classes5 bridge (smali_classes5/)

The port injects a `classes5.dex` HubSDK bridge (16 files) into the APK.
This bridge wires `TranConfigs` → `system_ext` probe. The probe root list
(`thubutils/b.b()`) walks `/tr_company/`, `/tr_carrier/`, `/tr_region/`,
`/tr_product/`, `/system_ext/`, `/tranfs/`, so provisioned assets under
`/system_ext/etc/asset/TranssionCamera/` resolve directly. Assets are
provided by the partition provisioning above — the APK embeds no asset
payload, and there is no `AssetFallback` extraction class.

## Verification

```bash
# Confirm all 465 tr_product assets are in blob list
grep -c "tr_product/etc/asset/TranssionCamera" device/tecno/CM8/proprietary-files.txt

# Confirm all 47 libs are in blob list
grep -c "tr_product/lib64" device/tecno/CM8/proprietary-files.txt
```
