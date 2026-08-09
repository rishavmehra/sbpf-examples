#!/usr/bin/env bash
#
# Build the reproducer four ways and print how `sol_memset_` is declared in the
# post-LTO IR each time:
#
#     LLVM 22 / 23   x   with / without --export=sol_memset_
#
# What to look for. The declaration starts life as
#
#     declare dso_local void @sol_memset_(ptr, i8, i64)
#
# and the failure mode is it turning into
#
#     declare internal fastcc void @sol_memset_()
#
# i.e. internal linkage and no parameters, so call sites pass nothing.
#
# Usage: ./compare.sh
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
OUT=${OUT:-/home/nox/dumps/sol-memset}
LINKER=${LINKER:-/home/nox/sbpf-linker/target/release/sbpf-linker}
NEW=${NEW:-nightly}                    # LLVM 23
OLD=${OLD:-nightly-2026-08-05}         # LLVM 22

mkdir -p "$OUT"
export PATH="$(dirname "$LINKER"):$PATH"

# `--emit=llvm-ir` makes sbpf-linker write the post-LTO module to the -o path
# instead of an ELF, which is exactly the stage we want to inspect.
base_flags='-C linker=sbpf-linker -C panic=abort -C relocation-model=static
  -C link-arg=--arch=v3 -C link-arg=--override-cpu-flag=v3
  -C link-arg=--emit=llvm-ir'

run() { # $1=toolchain  $2=label  $3=extra rustflags
  local toolchain=$1 label=$2 extra=${3:-}
  local llvm
  llvm=$(rustc "+$toolchain" -vV 2>/dev/null | sed -n 's/^LLVM version: //p')
  if [ -z "$llvm" ]; then
    printf '  %-28s toolchain %s not installed\n' "$label" "$toolchain"
    return
  fi

  rm -rf "$HERE/target/bpfel-unknown-none"
  RUSTFLAGS="$base_flags $extra" cargo "+$toolchain" build \
      --manifest-path "$HERE/Cargo.toml" --release \
      --target bpfel-unknown-none -Z build-std=core >/dev/null 2>&1

  local built
  built=$(find "$HERE/target/bpfel-unknown-none/release" \
          -name 'libsol_memset_repro.so' 2>/dev/null | head -1)
  if [ -z "$built" ]; then
    printf '  %-28s (LLVM %s) BUILD FAILED\n' "$label" "$llvm"
    return
  fi

  cp "$built" "$OUT/$label.ll"
  local decl
  decl=$(grep -E '^declare.*@sol_memset_' "$OUT/$label.ll" | head -1)
  printf '  %-28s (LLVM %-7s) %s\n' "$label" "$llvm" "${decl:-<no declaration found>}"
}

echo "post-LTO declaration of sol_memset_:"
echo
run "$OLD" "llvm22-internal"
run "$OLD" "llvm22-exported" '-C link-arg=--export=sol_memset_'
run "$NEW" "llvm23-internal"
run "$NEW" "llvm23-exported" '-C link-arg=--export=sol_memset_'
echo
echo "IR saved to $OUT/"
