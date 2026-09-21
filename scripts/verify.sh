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

fail=0
for t in "${trees[@]}"; do
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

exit "$fail"
