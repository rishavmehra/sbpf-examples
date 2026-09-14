# Public-key equality comparison

This test compares two ways of checking whether two 32-byte public keys are
equal:

- Pinocchio's hand-written four-`u64` comparison.
- Normal Rust equality: `left == right`.

Both versions are compiled with the current SBF toolchain and upstream SBPF,
giving four comparisons. All correctness tests pass.

## Results

CU is measured for equal keys, keys that differ in the first byte, and keys
that differ only in the last byte. Lower is better.

| Compiler and operation | Equal | First byte differs | Last byte differs |
|---|---:|---:|---:|
| SBF + manual | 32 | 18 | 32 |
| SBF + normal `==` | 25 | 17 | 26 |
| SBPF + manual | 29 | 14 | 29 |
| SBPF + normal `==` | **23** | **14** | **23** |

For this reproducer, SBPF with normal `==` gives the best overall result.
