#!/usr/bin/env bash
# Reassembly gate: assert each smali tree in the repo reassembles with the
# pinned toolchain and round-trips (after normalizing static-init noise) to
# exactly the committed tree.
#
# Usage: scripts/verify.sh [smali|smali_classes2|smali_classes3|smali_classes4|smali_classes5]
#   (with no args, verifies all trees)
set -euo pipefail
cd "$(dirname "$0")/.."

API=34
NORM="$PWD/scripts/normalize-smali.sh"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

trees=("$@")
[ "${#trees[@]}" -eq 0 ] && trees=(smali smali_classes2 smali_classes3 smali_classes4 smali_classes5)

# Stock-byte-identity policy files: these MUST never be edited. Compare
# against the pristine baseline commit path.
stock_assertions="smali_classes3/com/transsion/camera/app/ModeUIPolicy.smali
smali_classes3/com/transsion/camera/app/common/provider/ModeFeatureProvider.smali"

fail=0
for pair in "${trees[@]}"; do
  t="$pair"
  echo "== verifying $t =="
  [ -d "$t" ] || { echo "  ERROR: tree $t missing"; fail=1; continue; }

  # 1) assemble
  smali a --api "$API" -o "$TMP/$t.dex" "$t" >/dev/null

  # 2) disassemble the reassembly (gives normalized canonical form)
  baksmali d --api "$API" -o "$TMP/${t}_re" "$TMP/$t.dex" >/dev/null

  # 3) normalize noise on both sides and diff
  mkdir -p "$TMP/${t}_n" "$TMP/${t}_ren"
  cp -r "$t"/. "$TMP/${t}_n/"
  cp -r "$TMP/${t}_re"/. "$TMP/${t}_ren/"
  bash "$NORM" "$TMP/${t}_n" "$TMP/${t}_ren"

  if diff -r "$TMP/${t}_n" "$TMP/${t}_ren" > "$TMP/${t}.roundtrip.diff"; then
    echo "  PASS ($(find "$t" -name '*.smali' | wc -l) files round-trip clean)"
  else
    echo "  FAIL: $(wc -l < "$TMP/${t}.roundtrip.diff") diff lines"
    head -20 "$TMP/${t}.roundtrip.diff"
    fail=1
  fi
done

# Stock-byte-identity assertions: these files must equal the baseline
# (unmodified) commit exactly. Reuse the roundtrip output as the source of
# truth: a stock file untouched by the port reassembles to baseline bytes.
for f in $stock_assertions; do
  base="$(git rev-parse --show-toplevel 2>/dev/null)/$f"
  if [ ! -f "$base" ]; then
    echo "  SKIP stock assertion (no git checkout): $f"
    continue
  fi
  # The pristine baseline commit is the root commit of this history.
  base_cmt="$(git rev-list --max-parents=0 HEAD 2>/dev/null | head -n1)"
  if [ -n "$base_cmt" ] && git rev-parse --verify -q "$base_cmt" >/dev/null 2>&1; then
    if git show "$base_cmt:$f" 2>/dev/null | diff -q - "$base" >/dev/null; then
      echo "  STOCK OK: $f (byte-identical to baseline $base_cmt)"
    else
      echo "  STOCK FAIL: $f differs from baseline $base_cmt!"
      fail=1
    fi
  else
    echo "  SKIP stock assertion (no root commit found)"
  fi
done

exit "$fail"
