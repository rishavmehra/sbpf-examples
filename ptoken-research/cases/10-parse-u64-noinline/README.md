# Case 10 — parse behind a call boundary

Case 06's source with one change: `parse_digits` is marked `#[inline(never)]`.
It is the control that shows how much the result depends on an inlining
decision.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 17,952 | 18,711 |
| ELF bytes | 1,304 | 904 |
| static instructions | 97 | 98 |

Upstream costs **+759 CU**.

CU measured on the artifacts in this folder with the local SVM runner.

This case builds cleanly with plain `cargo build-sbpf` — it does not use the
`sol_memcpy_` shim, so the crash described in cases 08 and 09 does not apply.

## Prebuilt artifacts

| file | what it is |
|---|---|
| `toolchain.so` | built with `cargo-build-sbf 4.3.0` |
| `upstream.so` | built with `cargo-build-sbpf` |
| `toolchain.asm` | disassembly of `toolchain.so` |
| `upstream.asm` | disassembly of `upstream.so` |

## What this reproduces from p-token

Source repo: <https://github.com/solana-program/token>

The same operation as case 06 — the `.parse::<u64>()` at
[`pinocchio/program/src/processor/mod.rs:198`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L198),
run over 256 digits.

Why 256 digits costs ~18,000 CU: `u64::from_str` does
`result.checked_mul(10)?.checked_add(digit)?` per character, overflow detection
needs a 128-bit product, and SBF has no 128-bit multiply — so each digit calls
`__multi3`. **256 digits, 256 calls.** Case 06 has the full explanation.

## What this case is for

Cases 06 and 10 differ by **one attribute**:

```rust
// case 06
fn parse_digits(text: &str) -> Result<u64, ()> { ... }

// case 10
#[inline(never)]
fn parse_digits(text: &str) -> Result<u64, ()> { ... }
```

The effect:

| | toolchain | upstream | delta |
|---|---:|---:|---:|
| case 06 (inlined) | 16,914 | 17,935 | +1,021 |
| **case 10 (`#[inline(never)]`)** | **17,952** | **18,711** | **+759** |

Forcing the call boundary costs the toolchain 1,038 CU but upstream only 776 —
so it narrows the gap by 262 CU.

Both pipelines get slower, but by different amounts. That means the comparison
is **sensitive to an inlining decision**, and any number from this family should
be read with that in mind.

Real p-token's `try_ui_amount_into_amount` is a plain `fn` with no inline
attribute, so **case 06 is the one that matches production.** This case exists
to measure how fragile that match is.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_parse_u64_noinline.so toolchain.so

cargo build-sbpf --arch v3
cp target/bpfel-unknown-none/release/libptoken_repro_parse_u64_noinline.so upstream.so

sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 97 vs 98
```

Copy each `.so` out right after its build — both tools write into `target/`.

## What is NOT p-token

- `#[inline(never)]` is not in p-token. It is deliberately added here as a
  control.
- The surrounding parser is gone — see cases 08 and 09.
- A 256-digit amount is a test-suite edge case, not real traffic.
