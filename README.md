# sbpf-critical-path

Finds the critical (longest) path through each function in an sBPF program and renders a highlighted CFG as a DOT graph.

Built as an example of how to use [`sbpf-ir`](https://github.com/blueshift-gg/sbpf) and the `CfgDumpOverlay` trait from `sbpf-transform`.

## Usage

```bash
# Print DOT to stdout
cargo run -- program.so

# Write to file and render as SVG
cargo run -- program.so -o out.dot
dot -Tsvg out.dot -o out.svg
open out.svg
```

## What it does

- Loads the ELF `.so`, decodes instructions, and builds a CFG
- Runs a longest-path analysis per function (1 CU per instruction)
- Highlights critical-path blocks in red and annotates each block with its CU cost
- Shows total critical CU per function in the cluster label

## Dependencies

Depends on `feat/cfg-overlay` branch of [rishavmehra/sbpf](https://github.com/rishavmehra/sbpf):

- `sbpf-ir` — CFG construction and `topological_sort`
- `sbpf-transform` — `CfgDumpOverlay` trait and `dump_cfg_with`
- `sbpf-disassembler` — ELF parsing
- `sbpf-common` — instruction types
