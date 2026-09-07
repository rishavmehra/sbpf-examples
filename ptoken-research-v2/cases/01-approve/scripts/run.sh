#!/usr/bin/env bash
set -euo pipefail
case_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
"$case_dir/scripts/build-sbf.sh"
"$case_dir/scripts/test-one.sh" sbf
"$case_dir/scripts/build-sbpf.sh"
"$case_dir/scripts/test-one.sh" sbpf
"$case_dir/scripts/disassemble.sh"

