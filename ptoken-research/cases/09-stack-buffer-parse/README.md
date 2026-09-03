# Case 09 — stack buffer + parse

p-token's 256-digit parse with its local stack buffer and copy, but without the
`split()` / `trim` parser around it.


|           |                                                                                                    |
| --------- | -------------------------------------------------------------------------------------------------- |
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana`                         |
| upstream  | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |


## Result


|                     | toolchain | upstream |
| ------------------- | --------- | -------- |
| CU                  | 16,949    | 17,973   |
| ELF bytes           | 1,304     | 1,152    |
| static instructions | 97        | 128      |


Upstream costs **+1,024 CU**.

CU measured on the artifacts in this folder with the local SVM runner.

## Read this before building

`**cargo build-sbpf` alone produces a binary that crashes.** You must add
`target_feature="static-syscalls"`:

```bash
CARGO_TARGET_BPFEL_UNKNOWN_NONE_RUSTFLAGS='--cfg=target_feature="static-syscalls"' \
  cargo build-sbpf --arch v3
```

( carries `explicit_builtin_cfgs_in_flags = "allow"` so rustc
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
branch. It also passes `--llvm-args=--bpf-max-stores-per-memfunc=5`, which caps
inline stores at 5 — so filling the 257-byte buffer stops being inline stores
and becomes a `memset` call.

Neither is a problem alone. Together, the generated `entrypoint` throws away the
input pointer and calls `sol_memcpy_` with no arguments set up:

```
  r1 = r10            <- input pointer (r1) destroyed on instruction 1
  r1 += -0x109
  r2 = 0x30
  r3 = 0x101
  call fn_0288        <- memset(buffer, '0', 257)
  call sol_memcpy_    <- no arguments; inherits r2 = 0x30 as its source
```

`0x30` is the ASCII code for `'0'` — the memset fill byte, not an address. The
VM stops the program:

```
Access violation in unknown section at address 0x30 of size 257
```

With the cfg set, the same source compiles correctly — the input pointer is
saved in `r7` and all three arguments are set up:

```
entrypoint:
  r7 = r1             <- saves the input pointer
  r6 = r10
  r6 += -0x109
  r1 = r6
  r2 = 0x30
  r3 = 0x101
  call fn_0308        <- memset
  r7 += 0x10          <- src = input + 16
  r1 = r6             <- dst
  r2 = r7             <- src
  r3 = 0x100          <- len = 256
  call sol_memcpy_    <- correct
```

Confirmed by bisection: removing `--bpf-max-stores-per-memfunc=5` also fixes
it; removing `--disable-gotox` or `--export=__multi3` does not.

## Prebuilt artifacts


| file            | what it is                                    |
| --------------- | --------------------------------------------- |
| `toolchain.so`  | built with `cargo-build-sbf 4.3.0`            |
| `upstream.so`   | built with `cargo-build-sbpf` + the cfg above |
| `toolchain.asm` | disassembly of `toolchain.so`                 |
| `upstream.asm`  | disassembly of `upstream.so`                  |


## What this reproduces from p-token

Source repo: [https://github.com/solana-program/token](https://github.com/solana-program/token)

The buffer-and-parse tail of
`[try_ui_amount_into_amount](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L156)`,
`pinocchio/program/src/processor/mod.rs`:

```rust
let mut digits = [b'0'; MAX_FORMATTED_DIGITS];      // 257 bytes

unsafe {
    sol_memcpy_(digits.as_mut_ptr(), amount_str.as_ptr(), length as u64);
    ...
}

from_utf8_unchecked(from_raw_parts(digits.as_ptr(), length))
    .parse::<u64>()
```


| p-token                                                                                                                                             | line | this reproducer       |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | ---- | --------------------- |
| `[MAX_FORMATTED_DIGITS = u8::MAX + 2](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L86)`             | 86   | `BUFFER_LENGTH = 257` |
| `[let mut digits = [b'0'; MAX_FORMATTED_DIGITS]](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L179)` | 179  | same                  |
| `[sol_memcpy_` into the buffer](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L185)                   | 185  | one `sol_memcpy_`     |
| `[.parse::<u64>()](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L198)`                               | 198  | same                  |


This is **case 06 plus the buffer and copy**. Comparing the two shows how much
of the gap the buffer contributes:


| case   | what it has                                 | delta      |
| ------ | ------------------------------------------- | ---------- |
| 06     | parse only                                  | +1,021     |
| **09** | **+ buffer and copy**                       | **+1,024** |
| 08     | + full parser (`split`, `trim`, validation) | +1,027     |


The buffer adds ~3 CU and the parser another ~3. **The parse loop is essentially
all of it** — see case 06 for why 256 digits cost ~17,000 CU.

## Syscalls

Both sides make the same two calls — 1 `sol_memcpy_`, 1 `sol_memset_` — so the
comparison is not skewed by syscall overhead.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_stack_buffer_parse.so toolchain.so

CARGO_TARGET_BPFEL_UNKNOWN_NONE_RUSTFLAGS='--cfg=target_feature="static-syscalls"' \
  cargo build-sbpf --arch v3

cp target/bpfel-unknown-none/release/libptoken_repro_stack_buffer_parse.so upstream.so

sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 97 vs 128
```

Copy each `.so` out right after its build — both tools write into `target/`.

## What is NOT p-token

- p-token copies **two** slices into the buffer (whole part and decimals); this
copies one.
- The input is 256 digits with no `'.'`, so no validation runs.
- A 256-character amount is a test-suite edge case, not real traffic.

