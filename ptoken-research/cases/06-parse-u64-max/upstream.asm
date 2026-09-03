.globl entrypoint

entrypoint:
  r6 = r1
  w1 = *(u8 *)(r6 + 0x10)
  r7 = -0xff
  if r1 == 0x2b goto jmp_0028
  r7 = -0x100

jmp_0028:
  r0 = 0x0
  r2 = 0x1
  if r1 == 0x2b goto jmp_0048
  r2 = 0x0

jmp_0048:
  r6 += 0x10
  r6 += r2
  goto jmp_0080

jmp_0060:
  r6 += 0x1
  r2 &= 0x1
  r1 = r0
  if r2 != 0x0 goto jmp_0140

jmp_0080:
  r1 = r0
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_0190
  r3 = 0x1
  if r2 != 0x0 goto jmp_00c0
  r3 = 0x0

jmp_00c0:
  r1 = -0x1
  r3 &= 0x1
  if r3 != 0x0 goto jmp_0140
  r4 = r0
  w2 = *(u8 *)(r6 + 0x0)
  r2 += -0x30
  r3 = r2
  r3 <<= 0x20
  r3 >>= 0x20
  r0 += r3
  r3 = 0x1
  if r0 < r4 goto jmp_0128
  r3 = 0x0

jmp_0128:
  if r2 > 0x9 goto jmp_0140
  r3 &= 0x1
  if r3 == 0x0 goto jmp_0168

jmp_0140:
  *(u64 *)(r10 - 0x8) = r1
  r1 = r10
  r1 += -0x8
  r0 = 0x0
  exit

jmp_0168:
  r7 += 0x1
  r2 = 0x1
  if r7 == 0x0 goto jmp_0060
  r2 = 0x0
  goto jmp_0060

fn_0190:
  r2 *= r3
  r6 = r1
  r6 >>= 0x20
  r0 = r3
  r0 >>= 0x20
  r5 = r0
  r5 *= r6
  r5 += r2
  r4 *= r1
  r5 += r4
  r3 <<= 0x20
  r3 >>= 0x20
  r2 = r3
  r2 *= r6
  r1 <<= 0x20
  r1 >>= 0x20
  r3 *= r1
  r4 = r3
  r4 >>= 0x20
  r4 += r2
  r2 = r4
  r2 >>= 0x20
  r5 += r2
  r0 *= r1
  r4 <<= 0x20
  r4 >>= 0x20
  r4 += r0
  r1 = r4
  r1 >>= 0x20
  r5 += r1
  r4 <<= 0x20
  r3 <<= 0x20
  r3 >>= 0x20
  r4 |= r3
  r0 = r4
  r2 = r5
  exit
