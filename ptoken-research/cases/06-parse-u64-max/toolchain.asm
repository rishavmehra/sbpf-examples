.globl entrypoint

entrypoint:
  r6 = r1
  w1 = *(u8 *)(r6 + 0x10)
  r7 = 0xff
  if r1 == 0x2b goto jmp_0028
  r7 = 0x100

jmp_0028:
  r0 = 0x0
  r2 = 0x1
  if r1 == 0x2b goto jmp_0048
  r2 = 0x0

jmp_0048:
  r6 += 0x10
  r6 += r2

jmp_0058:
  r1 = r0
  if r7 == 0x0 goto jmp_0110
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_0138
  r2 = 0x1
  if r1 != 0x0 goto jmp_00a0
  r2 = 0x0

jmp_00a0:
  r1 = -0x1
  r2 &= 0x1
  if r2 != 0x0 goto jmp_0110
  w2 = *(u8 *)(r6 + 0x0)
  r2 += -0x30
  if r2 > 0x9 goto jmp_0110
  r3 = r0
  r0 += r2
  r2 = 0x1
  if r0 < r3 goto jmp_00f8
  r2 = 0x0

jmp_00f8:
  r6 += 0x1
  r7 += -0x1
  if r2 != 0x1 goto jmp_0058

jmp_0110:
  *(u64 *)(r10 - 0x1000) = r1
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit

fn_0138:
  *(u64 *)(r10 - 0xff8) = r2
  r2 = r1
  r2 <<= 0x20
  r2 >>= 0x20
  r7 = r3
  r7 <<= 0x20
  r7 >>= 0x20
  *(u64 *)(r10 - 0x1000) = r1
  r1 >>= 0x20
  r0 = r7
  r0 *= r2
  r7 *= r1
  r5 = r3
  r5 >>= 0x20
  r6 = r5
  r6 *= r2
  r9 = r6
  r9 += r7
  r2 = 0x1
  r8 = 0x1
  if r9 < r6 goto jmp_01e8
  r8 = 0x0

jmp_01e8:
  r6 = r9
  r6 <<= 0x20
  r7 = r0
  r7 += r6
  if r7 < r0 goto jmp_0218
  r2 = 0x0

jmp_0218:
  r9 >>= 0x20
  r8 <<= 0x20
  r8 |= r9
  r0 = *(u64 *)(r10 - 0xff8)
  r3 *= r0
  r0 = *(u64 *)(r10 - 0x1000)
  r4 *= r0
  r4 += r3
  r5 *= r1
  r5 += r4
  r5 += r8
  r5 += r2
  r0 = r7
  r1 = r5
  exit
