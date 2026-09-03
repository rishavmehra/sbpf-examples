# Case 06 — p-token's `u64` parsing loop

The smallest reproducer for p-token's maximum-decimals UI amount regression.
It parses 256 bytes with `str::parse::<u64>()` — exactly the hot operation
p-token reaches after it builds its digit buffer.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 16,914 | 17,935 |
| ELF bytes | 1,184 | 816 |
| static instructions | 82 | 87 |

Upstream costs **+1,021 CU**.

CU measured on the artifacts in this folder with the local SVM runner.

## Prebuilt artifacts

| file | what it is |
|---|---|
| `toolchain.so` | built with `cargo-build-sbf 4.3.0` |
| `upstream.so` | built with `cargo-build-sbpf` |
| `toolchain.asm` | disassembly of `toolchain.so` |
| `upstream.asm` | disassembly of `upstream.so` |

```bash
cat toolchain.asm
cat upstream.asm
```

## What this reproduces from p-token

Source repo: <https://github.com/solana-program/token>

**The failing test** —
[`pinocchio/program/tests/ui_amount_to_amount.rs:58`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/tests/ui_amount_to_amount.rs#L58)
`ui_amount_to_amount_with_maximum_decimals`:

```rust
// String representing the ui value `0.000....002`
let mut ui_amount = [b'0'; u8::MAX as usize + 1];   // 256 chars
ui_amount[1] = b'.';
ui_amount[ui_amount.len() - 1] = b'2';
// mint has u8::MAX (255) decimals; expects the answer 20
```

This is the single worst test in the full-program comparison —
**18,064 -> 18,310 CU**. Every other p-token invocation is within +20.

**The code path** —
[`pinocchio/program/src/processor/mod.rs:156`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L156),
`try_ui_amount_into_amount`, does five things:

| step | line |
|---|---|
| `split('.')` | 158 |
| `trim_end_matches('0')` | 165 |
| validation checks | 171–177 |
| two `sol_memcpy_` into a 257-byte stack buffer | 185–191 |
| **`.parse::<u64>()`** | [198](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L198) |

**Case 06 keeps only step 5.** Cases 08 and 09 add the rest back, and they move
the gap by only ~15–30 CU. The parse loop is the bulk of it.

Entry point in p-token:
[`processor/ui_amount_to_amount.rs`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/ui_amount_to_amount.rs#L28).

## Why parsing 256 digits costs ~17,000 CU

`"000...02".parse::<u64>()` looks trivial. It is not.

Rust's `u64::from_str` runs this per character:

```rust
result = result.checked_mul(10)?.checked_add(digit)?;
```

To know whether `a * 10` overflows 64 bits you must compute the **128-bit**
product and inspect the high half. SBF has no 128-bit multiply, so the compiler
emits a call to `__multi3`, the software 128-bit multiply builtin.

**256 digits -> 256 calls to `__multi3`.**

So what this case really measures is: how well does each pipeline compile 256
calls to `__multi3` and the loop around them?

## Where the 1,021 CU goes

Traces split at the helper's entry address:

| | inside `__multi3` | caller loop | total |
|---|---:|---:|---:|
| toolchain | 11,008 | 5,906 | 16,914 |
| upstream | 9,472 | **8,463** | 17,935 |
| delta | **−1,536** | **+2,557** | **+1,021** |

Both make exactly 256 calls.

- upstream's `__multi3` is **6 instructions cheaper per call** (37 vs 43)
- upstream's caller is **10 instructions more expensive per iteration**

**Upstream wins the helper and loses the loop, and the loop decides it.**

### The helpers are different code

```bash
sed -n '/^fn_0138:/,$p' toolchain.asm    # 45 instructions
sed -n '/^fn_0190:/,$p' upstream.asm     # 36 instructions
```

Toolchain's spills to the stack and tracks carries with branches:

```
  *(u64 *)(r10 - 0xff8) = r2      <- spill
  ...
  if r9 < r6 goto jmp_01e8        <- carry detection
  ...
  r0 = r7
  r1 = r5                          <- returns in r0:r1
```

Upstream's is straight-line, no stack, no branches:

```
  r2 *= r3
  ...
  r0 = r4
  r2 = r5                          <- returns in r0:r2
```

These are **different implementations, not the same algorithm compiled twice.**
That is by design — see "The dependency asymmetry" below.

### Memory

| | stack loads | stack stores |
|---|---:|---:|
| toolchain | 512 | 513 |
| upstream | **0** | **1** |

Toolchain spills twice per digit. Upstream eliminates that completely.

On a real CPU that is a large win. On SBF it buys nothing, because a stack
access and a register add both cost exactly 1 CU. Upstream removed ~1,024 cheap
instructions and added ~2,557 equally cheap ones.

This is the clearest example in the study of the core problem: **upstream
optimizes for a machine where memory is slow; SBF charges 1 per instruction and
does not care.** It is also why upstream is ~20% faster in wall-clock on this
path while costing more CU.

## The ABI transition

`__multi3` returns a 128-bit number — two 64-bit halves, too big for one
register. There are two ways to hand that back:

- **Old (indirect / `sret`):** the caller sets aside stack space and passes a
  pointer; the callee writes the answer there.
- **New (direct):** the callee returns the halves in registers — low in `r0`,
  high in `r2`. No memory.

Upstream switched from the old way to the new one:

- [LLVM PR #190894](https://github.com/llvm/llvm-project/pull/190894)
  (2026-04-08) extends BPF return assignment from `R0` alone to `R0,R2`,
  enabling 128-bit returns. Present in LLVM 23.1.0, absent from the toolchain's
  LLVM 20.1.7.
- [Rust commit `be32f36e`](https://github.com/rust-lang/rust/commit/be32f36e535578f65e6de48ab67e5680337268c6)
  (2026-08-15) is the matching frontend change: BPF aggregates up to 128 bits
  become direct register values instead of indirect returns.

Two adjacent nightlies bracket it, with LLVM and sbpf-linker held fixed:

| Rust nightly | Return form | CU |
|---|---|---:|
| 2026-08-18 | indirect (`sret`) | 16,911 |
| 2026-08-20 | direct (`r0:r2`) | 17,167 |

**+256 CU — exactly one extra instruction per input byte.**

Direct returns are normally better: no stack traffic. Here they cost more,
because the parse loop tests the high half for overflow on every digit, and
with the value in a register the compiler emits **three** conditional
operations per digit instead of two. Both variants have zero stack loads in the
hot loop, so this is not a spill regression.

You can see the two ABIs in the disassembly above: toolchain's helper ends
`r0 = r7; r1 = r5` (r0:r1), upstream's ends `r0 = r4; r2 = r5` (r0:r2).

> This explains 256 CU of the gap **as measured with `--override-cpu-flag=v3`**.
> It does not explain the further 768 CU that appears without that flag.

## The build flag matters

`cargo build-sbpf` does not pass `--override-cpu-flag=v3`. Adding it by hand
changes the result:

| upstream build | bytes | CU |
|---|---:|---:|
| with `--override-cpu-flag=v3` | 792 | 17,167 |
| without (= `cargo build-sbpf`) | 816 | **17,935** |

The flag saves 768 caller instructions — 3 per iteration. `-Z build-std=core`
vs `core,alloc` makes no difference; the cpu-flag is the whole cause.

Building with the flag reports **+252 instead of the +1,021 above** — a 4x
understatement. The same flag distorts case 03 in the *opposite* direction
(+96 instead of +32), so it is not a consistent bias and has to be checked
per case.

## The dependency asymmetry

```toml
[target.'cfg(target_arch = "bpf")'.dependencies]
solana-compiler-builtins = { git = "...", branch = "main" }
```

That dependency is conditional on `target_arch = "bpf"`:

| build | target arch | `__multi3` source |
|---|---|---|
| toolchain | `sbf` | platform-tools `compiler_builtins` |
| upstream | `bpf` | `solana-compiler-builtins` |

The two pipelines get **different `__multi3` implementations by construction** —
and `__multi3` is called 256 times, so it is a large part of what is being
measured. The 6-instructions-per-call helper advantage may be better codegen or
may just be a better algorithm. Nothing here separates the two.

## What is NOT p-token

- **The surrounding parser is gone** — no `split()`, no `trim_end_matches()`,
  no stack buffer, no memcpys. Cases 08 and 09 add them back and change the gap
  by only ~15–30 CU.
- **This is a pathological input.** A 256-character amount with 255 decimal
  places is a test-suite edge case. No real transaction looks like this.
- **The result is inlining-sensitive.** Case 10 is identical source except
  `parse_digits` is `#[inline(never)]`, and that flips the comparison:

  ```
  case 06 (no attribute)      toolchain 16,914   upstream 17,935
  case 10 (#[inline(never)])  toolchain 17,695   upstream 17,687   <- upstream wins
  ```

  Real p-token's `try_ui_amount_into_amount` is a plain `fn` with no attribute,
  so case 06 matches production on this point — but the sensitivity means the
  measurement is fragile.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_parse_u64_max.so toolchain.so

cargo build-sbpf --arch v3
cp target/bpfel-unknown-none/release/libptoken_repro_parse_u64_max.so upstream.so

sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 82 vs 87
```

Copy each `.so` out right after its build — both tools write into `target/`.

## Measuring CU

`upstream.so` is stripped and the trace runner cannot read its section table.
Round-trip it through the assembler first:

```bash
mkdir -p /tmp/p6/src/program && cp upstream.asm /tmp/p6/src/program/program.s
(cd /tmp/p6 && sbpf build --debug --arch v3 --deploy-dir deploy)
sbpf disassemble --format llvm /tmp/p6/deploy/program.so | diff - upstream.asm   # must be empty
```

Then run the trace binary from the research root against a directory holding
`toolchain-06-parse-u64-max.so` and `upstream-06-parse-u64-max.so`.
