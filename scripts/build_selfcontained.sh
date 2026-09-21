#!/usr/bin/env bash
# Build a self-contained TranssionCamera APK from the repo's pinned state:
#
#   original/TranssionCamera.apk   stock APK (unmodified firmware source)
#   artifacts/*.dex                pinned reassembly of the smali trees
#   payload/                       ALL 465 tr_product assets + 47 lib64 libs
#
# Self-containment contract (enforced at the end):
#   - every file under assets/camasset/ equals the 465-file
#     tr_product/etc/asset/TranssionCamera/ payload (no omissions)
#   - all 47 tr_product/lib64/*.so are present in lib/arm64-v8a/
#
# The APK is NOT a prebuilt deliverable: the device tree builds the camera
# with the in-tree overlay (TranCamera_Overlay_CM8_OP_ui5). This script is
# the verification/self-containment packager for the port repo.
#
# Optional signing/alignment (matching the v6/v7 working builds):
#   ZALIGN=/path/zipalign
#   APKSIGNER=/path/apksigner
#   KEY_PEM=/path/platform.x509.pem  KEY_PK8=/path/platform.pk8
#
# Usage: scripts/build_selfcontained.sh [out.apk]
set -euo pipefail
cd "$(dirname "$0")/.."

STOCK="original/TranssionCamera.apk"
OUT="${1:-build/TranssionCamera_selfcontained.apk}"
PAY_ASSETS="payload/etc/asset/TranssionCamera"
PAY_LIBS="payload/lib64"
ASSET_MOUNT="assets/camasset/etc/asset/TranssionCamera"
LIB_MOUNT="lib/arm64-v8a"

[ -f "$STOCK" ] || { echo "ERROR: $STOCK missing"; exit 1; }
[ -d "$PAY_ASSETS" ] || { echo "ERROR: $PAY_ASSETS missing"; exit 1; }
[ -d "$PAY_LIBS" ] || { echo "ERROR: $PAY_LIBS missing"; exit 1; }

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

# 1) stock base
( cd "$WORK" && unzip -q "$OLDPWD/$STOCK" )

# 1b) drop the stock JAR signature leftovers; apksigner re-signs cleanly.
rm -f "$WORK"/META-INF/MANIFEST.MF "$WORK"/META-INF/*.SF "$WORK"/META-INF/*.RSA "$WORK"/META-INF/*.DSA

# 2) swap in the pinned dex under the classloader's expected names.
#    artifact -> APK entry: smali.dex -> classes.dex, smali_classesN.dex -> classesN.dex
declare -A DEXMAP=(
  [smali.dex]=classes.dex
  [smali_classes2.dex]=classes2.dex
  [smali_classes3.dex]=classes3.dex
  [smali_classes4.dex]=classes4.dex
  [smali_classes5.dex]=classes5.dex
)
for src in "${!DEXMAP[@]}"; do
  [ -f "artifacts/$src" ] || { echo "ERROR: artifacts/$src missing"; exit 1; }
  cp "artifacts/$src" "$WORK/${DEXMAP[$src]}"
done
for f in "$WORK"/smali*.dex; do [ -e "$f" ] && rm -f "$f"; done

# 3) embed the payload (self-containment — all 465 assets + 47 libs)
mkdir -p "$WORK/assets/camasset/etc/asset"
cp -r "$PWD/$PAY_ASSETS" "$WORK/$ASSET_MOUNT"
mkdir -p "$WORK/$LIB_MOUNT"
cp -a "$PWD/$PAY_LIBS"/. "$WORK/$LIB_MOUNT/"

# 4) repackage, mirroring the STOCK packaging (fresh zip, payload mounts match
#    the smali wiring: AssetFallback strips the 'assets/camasset/' prefix).
#    Compression decision per entry:
#      - match the stock APK's Stored/Deflated split for every entry stock has
#        (stock ships res/, lib/, all classes*.dex, resources.arsc and ~179
#        assets UNCOMPRESSED),
#      - plus ALWAYS store (uncompress): lib/*.so (extractNativeLibs=false,
#        mmap'd), resources.arsc (targetSdk>=30), classes*.dex, and any audio
#        (ogg/mp3/wav) — these are read via openRawResourceFd()/openFd() which
#        fails with "probably compressed" otherwise.
#    Everything else (non-audio assets, etc.) is Deflated like stock.
STOCK_STORED="$WORK/stock_stored.txt"
unzip -lv "$STOCK" 2>/dev/null | sed -e 's/^ *//' | awk '$2=="Stored"{print $NF}' | grep -v '^$' > "$STOCK_STORED"

mkdir -p build
(cd "$WORK" && find . -type f | sed 's|^\./||' | sort > "$WORK/files.lst")
: > "$WORK/stored.lst"
: > "$WORK/defl.lst"
while IFS= read -r rel; do
  store=1
  case "$rel" in
    lib/*|resources.arsc|classes*.dex) store=0 ;;
    *.ogg|*.mp3|*.wav) store=0 ;;
  esac
  if [ "$store" -ne 0 ]; then
    grep -qxF "$rel" "$STOCK_STORED" && store=0
  fi
  if [ "$store" -eq 0 ]; then echo "$rel" >> "$WORK/stored.lst"; else echo "$rel" >> "$WORK/defl.lst"; fi
done < "$WORK/files.lst"

( cd "$WORK" && \
  zip -q -9 -X "$OLDPWD/$OUT" -@ < "$WORK/defl.lst" && \
  zip -q -0 -X "$OLDPWD/$OUT" -@ < "$WORK/stored.lst" )

# 5) self-containment assertion: NONE of the 465 assets or 47 libs may be
#    dropped from the assembled package.
apklist="$(mktemp)"
trap 'rm -rf "$WORK" "$apklist"' EXIT
unzip -Z1 "$OUT" > "$apklist"
missing=0
while IFS= read -r f; do
  rel="${f#"$PAY_ASSETS"/}"
  if ! grep -qxF "$ASSET_MOUNT/$rel" "$apklist"; then
    echo "MISSING ASSET: $rel" >&2; missing=1
  fi
done < <(find "$PAY_ASSETS" -type f | sort)
while IFS= read -r lib; do
  if ! grep -qxF "lib/arm64-v8a/$lib" "$apklist"; then
    echo "MISSING LIB: $lib" >&2; missing=1
  fi
done < <(ls "$PAY_LIBS")
[ "$missing" -eq 0 ] || { echo "FATAL: payload incomplete in $OUT"; exit 1; }

n=$(grep -c '^assets/camasset/' "$apklist")
l=$(grep -c '^lib/arm64-v8a/' "$apklist")
echo "OK $OUT"
echo "  assets under assets/camasset: $n (payload: $(find "$PAY_ASSETS" -type f | wc -l))"
echo "  libs under lib/arm64-v8a:     $l"

# 6) optional alignment + signing (device-tree/port build key, v6/v7 style)
if [ -n "${ZALIGN:-}" ]; then
  ALIGNED="${OUT%.apk}.aligned.apk"
  # -p page-aligns stored .so (required for extractNativeLibs=false mmap)
  "$ZALIGN" -p -f 4 "$OUT" "$ALIGNED"
  mv "$ALIGNED" "$OUT"
  echo "  zipalign (-p 4): done"
fi
if [ -n "${APKSIGNER:-}" ] && [ -n "${KEY_PEM:-}" ] && [ -n "${KEY_PK8:-}" ]; then
  "$APKSIGNER" sign --key "$KEY_PK8" --cert "$KEY_PEM" --out "${OUT%.apk}.signed.apk" "$OUT"
  echo "  signed: ${OUT%.apk}.signed.apk"
fi