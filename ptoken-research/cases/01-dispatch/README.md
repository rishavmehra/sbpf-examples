# Case 01 — dispatch

Compares how the two compilers build p-token's instruction dispatch.

| | |
|---|---|
| toolchain | `cargo-build-sbf` — rustc 1.89, LLVM 20.1.7, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 1,646 | 2,117 |
| ELF bytes | 1,432 | 1,112 |
| static instructions | 113 | 124 |

Upstream costs **+471 CU (+29%)**.

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
                                   w1 = w7
                                   w1 += w6
  r0 ^= r6                         w2 = w1
  r1 = r7                          w2 &= 0xfe
  r1 += r6                         w2 >>= 0x1
  r1 &= 0xff                       w2 *= 0xb3     <- the same
  r1 %= 0x2e   <- one divide       w2 >>= 0xc     <-   % 46
  r2 = r0                          w2 *= 0x2e     <-
  call fn_0150                     w1 -= w2       <-
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

Confirm it in the traces:

```bash
T=../../out/traces/toolchain-01-dispatch/*.trace
U=../../out/traces/upstream-01-dispatch/*.trace

grep -c mod64 $T    # 64  — one divide per iteration
grep -c mod64 $U    # 0   — none
grep -c mul32 $U    # 128 — two multiplies per iteration
grep -c rsh32 $U    # 128 — two shifts per iteration
```

6 extra instructions x 64 iterations = **+384 CU**.

### The match: +87 CU

```bash
sed -n '/^fn_0150:/,$p' toolchain.asm     # toolchain
sed -n '/^fn_00b8:/,$p' upstream.asm      # upstream
```

Upstream uses 32-bit compares (`jeq32`, `jsgt32`) and a longer compare chain.
This is the part that maps to real p-token code.

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
