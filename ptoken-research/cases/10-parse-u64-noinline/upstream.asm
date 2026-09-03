.globl entrypoint

entrypoint:
  r1 += 0x10
  call fn_0058
  r0 &= 0x1
  r1 = -0x1
  if r0 != 0x0 goto jmp_0030
  r1 = r2

jmp_0030:
  *(u64 *)(r10 - 0x8) = r1
  r1 = r10
  r1 += -0x8
  r0 = 0x0
  exit

fn_0058:
  r6 = r1
  w1 = *(u8 *)(r6 + 0x0)
  r8 = -0xff
  if r1 == 0x2b goto jmp_0080
  r8 = -0x100

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
  r7 = r0
  if r2 != 0x0 goto jmp_01a0

jmp_00d0:
  r7 = r0
  r1 = r7
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_01e8
  r1 = 0x1
  r3 = 0x1
  if r2 != 0x0 goto jmp_0120
  r3 = 0x0

jmp_0120:
  r3 &= 0x1
  if r3 != 0x0 goto jmp_01a0
  r4 = r0
  w2 = *(u8 *)(r6 + 0x0)
  r2 += -0x30
  r1 = r2
  r1 <<= 0x20
  r1 >>= 0x20
  r0 += r1
  r1 = 0x1
  r3 = 0x1
  if r0 < r4 goto jmp_0188
  r3 = 0x0

jmp_0188:
  if r2 > 0x9 goto jmp_01a0
  r3 &= 0x1
  if r3 == 0x0 goto jmp_01b8

jmp_01a0:
  r0 = r1
  r2 = r7
  exit

jmp_01b8:
  r8 += 0x1
  r1 = 0x0
  r2 = 0x1
  if r8 == 0x0 goto jmp_00b0
  r2 = 0x0
  goto jmp_00b0

fn_01e8:
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
