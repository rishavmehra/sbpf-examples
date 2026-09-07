#!/usr/bin/env bash
set -euo pipefail
case_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
output_dir="$case_dir/artifacts/sbpf"
mkdir -p "$output_dir"
(cd "$case_dir" && cargo build-sbpf --arch v3) 2>&1 | tee "$output_dir/build.log"
install -m 755 "$case_dir/target/deploy/ptoken_approve_repro.so" \
  "$output_dir/ptoken_approve_repro.so"

