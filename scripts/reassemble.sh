#!/usr/bin/env bash
# Reassemble the smali trees to dex files.
#
# NOTE: smali 2.5.2 assembly output is NOT byte-deterministic across runs
# (JVM-dependent item ordering), so rebuilt dex will not byte-match the
# committed artifacts/. Those are the pinned, shipped references.
#
# This script therefore writes to build/ by default so the pinned
# artifacts/ directory stays pristine. Use --to-artifacts only when you
# intentionally want to re-pin the shipped binaries.
#
# Usage: scripts/reassemble.sh [--to-artifacts] [tree ...]
#   With no tree args, reassembles all five trees.
set -euo pipefail
cd "$(dirname "$0")/.."

API=34
UPDATE_ARTIFACTS=0
[ "${1:-}" = "--to-artifacts" ] && { UPDATE_ARTIFACTS=1; shift; }

trees=("$@")
[ "${#trees[@]}" -eq 0 ] && trees=(smali smali_classes2 smali_classes3 smali_classes4 smali_classes5)

outdir=build
[ "$UPDATE_ARTIFACTS" -eq 1 ] && outdir=artifacts
mkdir -p "$outdir"

for t in "${trees[@]}"; do
  [ -d "$t" ] || { echo "ERROR: tree $t missing"; exit 1; }
  echo "== assembling $t -> $outdir/$t.dex =="
  smali a --api "$API" -o "$outdir/$t.dex" "$t"
done

# Regenerate the machine-checkable checksum files FROM the resulting dex
# files so they always match what is committed (CI validates artifacts vs
# these files; it does not rebuild-and-compare due to non-determinism).
if [ "$UPDATE_ARTIFACTS" -eq 1 ]; then
  md5sum "$outdir"/*.dex > CHECKSUMS.md5
  sha256sum "$outdir"/*.dex > CHECKSUMS.sha256
fi