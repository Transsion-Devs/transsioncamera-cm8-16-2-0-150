#!/usr/bin/env bash
# Reassemble the edited smali trees to dex files under artifacts/.
#
# Usage: scripts/reassemble.sh [tree ...]
#   With no args, reassembles all four trees.
set -euo pipefail
cd "$(dirname "$0")/.."

API=34
mkdir -p artifacts

trees=("$@")
[ "${#trees[@]}" -eq 0 ] && trees=(smali smali_classes2 smali_classes3 smali_classes4)

for t in "${trees[@]}"; do
  [ -d "$t" ] || { echo "ERROR: tree $t missing"; exit 1; }
  echo "== assembling $t -> artifacts/$t.dex =="
  smali a --api "$API" -o "artifacts/$t.dex" "$t"
  md5sum "artifacts/$t.dex"
done