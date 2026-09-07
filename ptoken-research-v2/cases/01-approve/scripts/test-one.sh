#!/usr/bin/env bash
set -euo pipefail
case_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
kind="${1:?usage: test-one.sh sbf|sbpf}"
output_dir="$case_dir/artifacts/$kind"
(
  cd /home/ubuntu
  export CARGO_TARGET_DIR="$case_dir/host-target"
  export SBF_OUT_DIR="$output_dir"
  cargo test --manifest-path "$case_dir/Cargo.toml" \
    --test approve -- --nocapture
) 2>&1 | tee "$output_dir/test.log"
