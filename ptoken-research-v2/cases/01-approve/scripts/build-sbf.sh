#!/usr/bin/env bash
set -euo pipefail
case_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
output_dir="$case_dir/artifacts/sbf"
mkdir -p "$output_dir"
cargo build-sbf --manifest-path "$case_dir/Cargo.toml" --arch v3 \
  --sbf-out-dir "$output_dir" 2>&1 | tee "$output_dir/build.log"

