.globl entrypoint

entrypoint:
  w6 = *(u8 *)(r1 + 0x10)
  r1 = 0x101010101010101 ll
  r2 = r6
  r2 *= r1
  *(u64 *)(r10 - 0x30) = r2
  *(u64 *)(r10 - 0x38) = r2
  *(u64 *)(r10 - 0x40) = r2
  *(u64 *)(r10 - 0x48) = r2
  *(u64 *)(r10 - 0x11) = r2
  *(u64 *)(r10 - 0x18) = r2
  *(u64 *)(r10 - 0x20) = r2
  *(u64 *)(r10 - 0x28) = r2
  r7 = 0x0
  r8 = 0x0

jmp_0078:
  r9 = r7
  r9 &= 0xff
  r1 = r9
  r1 >>= 0x5
  r1 ^= r6
  *(u8 *)(r10 - 0x9) = w1
  r1 = r10
  r1 += -0x48
  r2 = r10
  r2 += -0x28
  call fn_0110
  r8 += r0
  r7 += 0x1
  if r9 < 0x3f goto jmp_0078
  *(u64 *)(r10 - 0x8) = r8
  r1 = r10
  r1 += -0x8
  r0 = 0x0
  exit

fn_0110:
  r3 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r1 + 0x0)
  if r4 == r3 goto jmp_0138

jmp_0128:
  r3 = 0x1
  goto jmp_0188

jmp_0138:
  r3 = *(u64 *)(r2 + 0x8)
  r4 = *(u64 *)(r1 + 0x8)
  if r4 != r3 goto jmp_0128
  r3 = *(u64 *)(r2 + 0x10)
  r4 = *(u64 *)(r1 + 0x10)
  if r4 != r3 goto jmp_0128
  r3 = 0x0
  r2 = *(u64 *)(r2 + 0x18)
  r1 = *(u64 *)(r1 + 0x18)
  if r1 != r2 goto jmp_0128

jmp_0188:
  r0 = 0x1
  if r3 == 0x0 goto jmp_01a0
  r0 = 0x0

jmp_01a0:
  exit
