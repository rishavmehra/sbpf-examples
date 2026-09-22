# Rust BPF aggregate-return regression

This is a small repro for the regression introduced by
[rust-lang/rust#161076](https://github.com/rust-lang/rust/pull/161076).

The source contains only:

- one successful instruction path;
- several possible `ProgramResult` errors;
- one non-inlined function returning `ProgramResult`.

It does not contain the p-token Mint or account logic.

## Build both sides of the Rust change

Before the PR:

```bash
cargo +nightly-2026-08-17 \
  --config .cargo/sbpf.toml \
  build --release \
  --target bpfel-unknown-none \
  --target-dir target/pre
```

After the PR:

```bash
cargo +nightly-2026-08-19 \
  --config .cargo/sbpf.toml \
  build --release \
  --target bpfel-unknown-none \
  --target-dir target/post
```

The two compilers use the same source, linker and build flags.

## Measure CU

Before:

```bash
PROGRAM_PATH=target/pre/bpfel-unknown-none/release/librust_bpf_abi_regression \
cargo test program_result_abi_regression -- --nocapture --test-threads=1
```

After:

```bash
PROGRAM_PATH=target/post/bpfel-unknown-none/release/librust_bpf_abi_regression \
cargo test program_result_abi_regression -- --nocapture --test-threads=1
```

Result:

```text
nightly-2026-08-17: 30 CU
nightly-2026-08-19: 34 CU
regression:           +4 CU
```

Before the PR, the non-inlined `ProgramResult` return uses an indirect
8-byte return slot. After the PR, it returns one `i64`. The new lowering
executes more instructions on the successful path.
