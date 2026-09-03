# Case 01 — dispatch

Compares how the two compilers build p-token's instruction dispatch.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 1,646 | 2,117 |
| ELF bytes | 1,432 | 1,112 |
| static instructions | 113 | 124 |

Upstream costs **+471 CU (+29%)**.

CU measured on the artifacts in this folder with the local SVM runner.

## Prebuilt artifacts

Checked in so you can read the code without building anything:

| file | what it is |
|---|---|
| `toolchain.so` | built with `cargo-build-sbf` |
| `upstream.so` | built with `cargo-build-sbpf` |
| `toolchain.asm` | disassembly of `toolchain.so` |
| `upstream.asm` | disassembly of `upstream.so` |

Start here:

```bash
diff -y --width=90 \
  <(sed -n '/^entrypoint:/,/exit/p' toolchain.asm) \
  <(sed -n '/^entrypoint:/,/exit/p' upstream.asm)
```

## What this reproduces from p-token

Source repo: <https://github.com/solana-program/token>
File: `pinocchio/program/src/entrypoint.rs`

p-token splits its instruction dispatch into **two** match statements on purpose,
to keep the hot path small. The comment in the source says so:

> This function is used to reduce the overhead of having a large `match`
> statement in the `inner_process_instruction` function.

This case copies that two-level structure.

| p-token | line | this reproducer |
|---|---|---|
| [`process_instruction`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/entrypoint.rs#L243) | 243 | `entrypoint` |
| [`match *discriminator` — hot arms](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/entrypoint.rs#L294) | 294 | `fn dispatch` |
| [`inner_process_remaining_instruction`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/entrypoint.rs#L389) | 389 | `fn remaining` |
| [`match discriminator` — cold arms](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/entrypoint.rs#L394) | 394 | body of `remaining` |
| [`_ => Err(InvalidInstruction)`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/entrypoint.rs#L500) | 500 | `_ => u64::MAX` |

The hot arm set is copied exactly:

```
0  1  3  7  8  9  12  15  17  18  20  22
```

Those are p-token's real discriminators — InitializeMint, InitializeAccount,
Transfer, MintTo, and so on. You can see them in the disassembly as
`if r2 == 0x0`, `if r2 == 0x1`, `if r2 == 0x3` …

The cold arms here are `2 4 5 6 10 13 23 38 45` — 9 of p-token's 15.

## What is NOT from p-token

The `entrypoint` loop is scaffolding:

- `for i in 0..64` — repeats the dispatch so the effect is measurable
- `% 46` — cycles through the arm values
- `rotate_left` / `xor` / `wrapping_mul` bodies — stand-ins for the real handlers

p-token has none of this. It reads one byte and dispatches once.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_dispatch.so toolchain.so

cargo build-sbpf --arch v3
cp target/bpfel-unknown-none/release/libptoken_repro_dispatch.so upstream.so
```

Copy each `.so` out right after its build — both tools write into `target/`
and the second one overwrites the first.

## Disassemble it

```bash
sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 113 vs 124
```

## Where the 471 CU goes

### The loop: +384 CU

```bash
diff -y --width=90 \
  <(sed -n '/^entrypoint:/,/exit/p' toolchain.asm) \
  <(sed -n '/^entrypoint:/,/exit/p' upstream.asm)
```

```
TOOLCHAIN (9 per iteration)      UPSTREAM (15 per iteration)
                                   r1 = r7
                                   r1 += r6
  r0 ^= r6                         r2 = r1
  r1 = r7                          r2 &= 0xfe
  r1 += r6                         r2 >>= 0x1
  r1 &= 0xff                       r2 *= 0xb3     <- the same
  r1 %= 0x2e   <- one divide       r2 >>= 0xc     <-   % 46
  r2 = r0                          r2 *= 0x2e     <-
  call fn_0000                     r1 -= r2       <-
  r6 += 0x1                        r0 ^= r6
  if r6 != 0x40 goto ...           r2 = r0
                                   call fn_00b8
                                   r6 += 0x1
                                   if r6 == 0x40 goto ...
                                   goto ...       <- extra jump
```

Upstream replaced the divide with multiply-and-shift. On a normal CPU that is a
good trade — dividing costs about 40 cycles, multiplying about 3. On SBF every
instruction costs exactly 1 CU, so it swapped 1 instruction for 7 and lost.

The executed traces confirm it:

| opcode | toolchain | upstream |
|---|---:|---:|
| `mod64` | **64** | **0** |
| `mul64` | 6 | **134** |
| `rsh64` | 9 | **137** |

One divide per iteration on the toolchain side; none on upstream, replaced by
two multiplies and two shifts each time round (128 of each, plus a handful
elsewhere).

6 extra instructions x 64 iterations = **+384 CU**.

### The match: +87 CU

```bash
sed -n '/^fn_0000:/,/^entrypoint:/p' toolchain.asm   # toolchain
sed -n '/^fn_00b8:/,$p' upstream.asm      # upstream
```

Both build a compare chain over the discriminator. This is the part that maps
to real p-token code — the rest of the gap lives here.

## What to take from this

**The +384 is a compiler finding, not a p-token cost.** p-token does not do
integer division per dispatch. But the finding is real and affects any Solana
program that does: LLVM 23 strength-reduces division on a VM where division is
already one instruction.

**The +87 is p-token's actual exposure** — about +1.4 CU per instruction
dispatched. That matches the full-program measurements, where most p-token
invocations land at +6 to +20 CU.

Do not quote +471 as a p-token number.

## Note on memory

Both binaries perform the **same** memory operations: 1 load, 1 store, 0 stack
loads, 1 stack store. The whole 471 CU difference is arithmetic and branching.
Register spilling explains none of it.
