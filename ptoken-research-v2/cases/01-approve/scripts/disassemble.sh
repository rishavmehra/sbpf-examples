#!/usr/bin/env bash
set -euo pipefail
case_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
tool="/home/ubuntu/upstream/sbpf/target/release/sbpf"
output_dir="$case_dir/artifacts/disassembly"
sbf="$case_dir/artifacts/sbf/ptoken_approve_repro.so"
sbpf="$case_dir/artifacts/sbpf/ptoken_approve_repro.so"
if [[ ! -x "$tool" ]]; then
  cargo build --release --bin sbpf --manifest-path /home/ubuntu/upstream/sbpf/Cargo.toml
fi
mkdir -p "$output_dir"
"$tool" disassemble "$sbf" > "$output_dir/sbf.asm"
"$tool" disassemble "$sbpf" > "$output_dir/sbpf.asm"
"$tool" disassemble "$sbf" --raw > "$output_dir/sbf.raw.asm"
"$tool" disassemble "$sbpf" --raw > "$output_dir/sbpf.raw.asm"
diff -u "$output_dir/sbf.raw.asm" "$output_dir/sbpf.raw.asm" \
  > "$output_dir/sbf-vs-sbpf.diff" || true
printf 'SBF instructions : %s\n' "$(wc -l < "$output_dir/sbf.raw.asm")"
printf 'SBPF instructions: %s\n' "$(wc -l < "$output_dir/sbpf.raw.asm")"

