.globl entrypoint

entrypoint:
  r7 = r1
  r6 = r10
  r6 += -0x109
  r1 = r6
  r2 = 0x30
  r3 = 0x101
  call fn_0308
  r7 += 0x10
  r1 = r6
  r2 = r7
  r3 = 0x100
  call sol_memcpy_
  r7 = -0xff
  w1 = *(u8 *)(r10 - 0x109)
  if r1 == 0x2b goto jmp_0080
  r7 = -0x100

jmp_0080:
  r0 = 0x0
  r2 = 0x1
  if r1 == 0x2b goto jmp_00a0
  r2 = 0x0

jmp_00a0:
  r6 += r2
  goto jmp_00d0

jmp_00b0:
  r6 += 0x1
  r2 &= 0x1
  r1 = r0
  if r2 != 0x0 goto jmp_0190

jmp_00d0:
  r1 = r0
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_01e0
  r3 = 0x1
  if r2 != 0x0 goto jmp_0110
  r3 = 0x0

jmp_0110:
  r1 = -0x1
  r3 &= 0x1
  if r3 != 0x0 goto jmp_0190
  r4 = r0
  w2 = *(u8 *)(r6 + 0x0)
  r2 += -0x30
  r3 = r2
  r3 <<= 0x20
  r3 >>= 0x20
  r0 += r3
  r3 = 0x1
  if r0 < r4 goto jmp_0178
  r3 = 0x0

jmp_0178:
  if r2 > 0x9 goto jmp_0190
  r3 &= 0x1
  if r3 == 0x0 goto jmp_01b8

jmp_0190:
  *(u64 *)(r10 - 0x8) = r1
  r1 = r10
  r1 += -0x8
  r0 = 0x0
  exit

jmp_01b8:
  r7 += 0x1
  r2 = 0x1
  if r7 == 0x0 goto jmp_00b0
  r2 = 0x0
  goto jmp_00b0

fn_01e0:
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

fn_0308:
  r6 = r1
  if r3 > 0x50 goto jmp_03e8
  r1 = 0x0
  if r3 < 0x8 goto jmp_03a8
  r4 = r2
  r4 &= 0xff
  r1 = 0x101010101010101 ll
  r4 *= r1
  r5 = 0x0
  r1 = 0x0

jmp_0360:
  r0 = r6
  r0 += r5
  *(u64 *)(r0 + 0x0) = r4
  r1 += 0x8
  r0 = r5
  r0 += 0x10
  r5 = r1
  if r0 > r3 goto jmp_03a8
  goto jmp_0360

jmp_03a8:
  if r1 >= r3 goto jmp_03d8

jmp_03b0:
  r4 = r6
  r4 += r1
  *(u8 *)(r4 + 0x0) = w2
  r1 += 0x1
  if r1 < r3 goto jmp_03b0

jmp_03d8:
  r0 = r6
  exit

jmp_03e8:
  r2 &= 0xff
  r1 = r6
  call sol_memset_
  goto jmp_03d8
