.globl entrypoint

fn_0000:
  r6 = r1
  w2 = *(u8 *)(r6 + 0x0)
  r1 = 0xff
  if r2 == 0x2b goto jmp_0028
  r1 = 0x100

jmp_0028:
  r0 = 0x0
  r3 = 0x1
  if r2 == 0x2b goto jmp_0048
  r3 = 0x0

jmp_0048:
  r6 += r3

jmp_0050:
  r8 = r1
  r7 = r0
  r1 = 0x1
  if r8 != 0x0 goto jmp_0078
  r1 = 0x0

jmp_0078:
  if r1 != 0x1 goto jmp_0130
  r1 = r7
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_01b0
  r2 = 0x1
  if r1 != 0x0 goto jmp_00c0
  r2 = 0x0

jmp_00c0:
  r2 &= 0x1
  if r2 != 0x0 goto jmp_0130
  w1 = *(u8 *)(r6 + 0x0)
  r1 += -0x30
  if r1 > 0x9 goto jmp_0130
  r3 = r0
  r0 += r1
  r2 = 0x1
  if r0 < r3 goto jmp_0110
  r2 = 0x0

jmp_0110:
  r1 = r8
  r1 += -0x1
  r6 += 0x1
  if r2 != 0x1 goto jmp_0050

jmp_0130:
  r0 = 0x1
  if r8 != 0x0 goto jmp_0148
  r0 = 0x0

jmp_0148:
  r1 = r7
  exit

entrypoint:
  r1 += 0x10
  call fn_0000
  r0 &= 0x1
  r2 = -0x1
  if r0 != 0x0 goto jmp_0188
  r2 = r1

jmp_0188:
  *(u64 *)(r10 - 0x1000) = r2
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit

fn_01b0:
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
  if r9 < r6 goto jmp_0260
  r8 = 0x0

jmp_0260:
  r6 = r9
  r6 <<= 0x20
  r7 = r0
  r7 += r6
  if r7 < r0 goto jmp_0290
  r2 = 0x0

jmp_0290:
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
