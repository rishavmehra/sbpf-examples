# Case 08 — the full UI parser

p-token's complete `try_ui_amount_into_amount` — `split`, `trim`, validation,
stack buffer, two copies, and the 256-digit parse — with only account handling
removed.


|           |                                                                                                    |
| --------- | -------------------------------------------------------------------------------------------------- |
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana`                         |
| upstream  | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |


## Result


|                     | toolchain | upstream |
| ------------------- | --------- | -------- |
| CU                  | 17,570    | 18,597   |
| ELF bytes           | 4,200     | 3,392    |
| static instructions | 450       | 403      |


Upstream costs **+1,027 CU**.

CU measured on the artifacts in this folder with the local SVM runner.

## Read this before building

`cargo build-sbpf` **alone produces a binary that crashes.** You must add
`target_feature="static-syscalls"`:

```bash
CARGO_TARGET_BPFEL_UNKNOWN_NONE_RUSTFLAGS='--cfg=target_feature="static-syscalls"' \
  cargo build-sbpf --arch v3
```

(`Cargo.toml` carries `explicit_builtin_cfgs_in_flags = "allow"` so rustc
accepts that `--cfg`; `target_feature` is a built-in cfg and is otherwise
rejected on the command line.)

Why, in short: this case calls `sol_memcpy_` through the shim in
`../static-syscall-memcpy.rs`, which has two branches —

```rust
#[cfg(not(target_feature = "static-syscalls"))]
extern "C" { fn sol_memcpy_(dst: *mut u8, src: *const u8, len: u64); }   // a linker symbol

#[cfg(target_feature = "static-syscalls")]
unsafe fn sol_memcpy_(...) { transmute(ADDRESS)(dst, src, len) }          // a direct address
```

`cargo build-sbpf` does not set that cfg, so the code takes the `extern "C"`
branch. It also passes `--llvm-args=--bpf-max-stores-per-memfunc=5`, which turns
the 257-byte buffer initialisation into a `memset` call instead of inline
stores.

Together, the generated code calls `sol_memcpy_` without setting up its
arguments — it inherits the memset's fill byte (`0x30`, ASCII `'0'`) as its
source pointer, and the VM faults:

```
Access violation in unknown section at address 0x30 of size 257
```

Case 09 has the same problem and shows the good and bad disassembly side by
side.

## Prebuilt artifacts


| file            | what it is                                    |
| --------------- | --------------------------------------------- |
| `toolchain.so`  | built with `cargo-build-sbf 4.3.0`            |
| `upstream.so`   | built with `cargo-build-sbpf` + the cfg above |
| `toolchain.asm` | disassembly of `toolchain.so`                 |
| `upstream.asm`  | disassembly of `upstream.so`                  |




## What this reproduces from p-token

Source repo: [https://github.com/solana-program/token](https://github.com/solana-program/token)

`parse_ui_amount` here is a **verbatim copy** of
`[try_ui_amount_into_amount](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L156)`,
`pinocchio/program/src/processor/mod.rs` — same logic, same constants, same two
`sol_memcpy_` calls. Only the error type differs.


| p-token                                                                                                                                                                                                                         | line    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| `[split('.')](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L158)`                                                                                                                | 158     |
| `[trim_end_matches('0')](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L165)`                                                                                                     | 165     |
| [validation checks](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L171)                                                                                                           | 171–177 |
| `[let mut digits = [b'0'; MAX_FORMATTED_DIGITS]](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L179)`                                                                             | 179     |
| [two](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L185) `sol_memcpy_` [calls](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L185) | 185–191 |
| `[.parse::<u64>()](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L198)`                                                                                                           | 198     |


The input matches p-token's own test
`[ui_amount_to_amount_with_maximum_decimals](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/tests/ui_amount_to_amount.rs#L58)`:
a 256-character string `0.000…002` with 255 decimals.

Entry point in p-token:
`[processor/ui_amount_to_amount.rs](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/ui_amount_to_amount.rs#L28)`.

## The parser context barely matters

Cases 06, 09 and 08 build up the same code path in stages:


| case   | what it has                               | delta      |
| ------ | ----------------------------------------- | ---------- |
| 06     | parse only                                | +1,021     |
| 09     | + buffer and copy                         | +1,024     |
| **08** | **+** `split`**,** `trim`**, validation** | **+1,027** |


The buffer adds ~3 CU, the parser another ~3. **Over 99% of the gap is the parse
loop itself** — see case 06 for why 256 digits cost ~17,000 CU.

That makes case 06 the right place to investigate, and this case the proof that
nothing else in the parser contributes.

## Syscalls are not matched


|               | toolchain | upstream |
| ------------- | --------- | -------- |
| `sol_memcpy_` | 2         | 2        |
| `sol_memset_` | 1         | 1        |
| `sol_memcmp_` | **1**     | 0        |


The toolchain calls `sol_memcmp_` where upstream inlines the comparison, so it
pays ~10 CU of syscall overhead that upstream does not. The real codegen gap is
therefore slightly *larger* than the +1,027 measured here.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_ui_parser_full_shape.so toolchain.so

CARGO_TARGET_BPFEL_UNKNOWN_NONE_RUSTFLAGS='--cfg=target_feature="static-syscalls"' \
  cargo build-sbpf --arch v3

cp target/bpfel-unknown-none/release/libptoken_repro_ui_parser_full_shape.so upstream.so

sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 450 vs 403
```

Copy each `.so` out right after its build — both tools write into `target/`.

## What is NOT p-token

- Account loading and the mint lookup are removed; only the parser runs.
- A 256-character amount with 255 decimals is a test-suite edge case. No real
transaction looks like this.

