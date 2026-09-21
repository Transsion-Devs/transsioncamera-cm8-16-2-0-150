#!/usr/bin/env bash
# Strip version-specific smali noise so reassembled trees can be compared
# byte-for-byte against the committed tree.
#
# The only known noise is static field initializers written by baksmali as
#   .field ... NAME:TYPE = <init>
# which `smali a` normalizes away when the initializer is the type's default
# (false / 0x0 / null). The committed tree keeps those init lines; the
# re-baksmali'd output drops them. Dropping them on both sides makes the
# roundtrip comparison exact.
set -euo pipefail

filter() {
  sed -E 's/^([[:space:]]*\.field[[:space:]][^=]*)( =.*)$/\1/'
}

if [ "$#" -eq 0 ]; then
  filter
else
  for d in "$@"; do
    find "$d" -type f -name '*.smali' -exec sed -E -i \
      's/^([[:space:]]*\.field[[:space:]][^=]*)( =.*)$/\1/' {} +
  done
fi