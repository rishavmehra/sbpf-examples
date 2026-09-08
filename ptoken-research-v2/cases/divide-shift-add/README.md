# Divide-to-shift/multiply reproducer

This minimal program evaluates a runtime `u8 / 46` with identical source for both compilers.
`build-sbf` emits one `div64`; `build-sbpf` emits `rsh32`, `mul32`, `rsh32`.
This demonstrates upstream replacing one division with three instructions.
