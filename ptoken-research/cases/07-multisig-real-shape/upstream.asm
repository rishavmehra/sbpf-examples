.globl entrypoint

entrypoint:
  r0 = 0x2
  w3 = *(u8 *)(r1 + 0x1d3)
  w2 = *(u8 *)(r1 + 0x1d4)
  if r3 > 0xb goto jmp_0360
  r4 = 0x0
  *(u32 *)(r10 - 0x9) = w4
  *(u64 *)(r10 - 0x10) = r4
  if r3 == 0x0 goto jmp_0310
  r3 <<= 0x5
  r5 = r10
  r5 += -0x10
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x170)
  r8 = r3
  goto jmp_0128

jmp_0080:
  r9 = *(u64 *)(r1 + 0x178)
  r7 = *(u64 *)(r0 - 0x10)
  if r7 != r9 goto jmp_0108
  r7 = *(u64 *)(r1 + 0x180)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r7 goto jmp_0108
  r7 = *(u64 *)(r1 + 0x188)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 != r7 goto jmp_0108
  w7 = *(u8 *)(r5 + 0x0)
  if r7 != 0x0 goto jmp_0108
  r9 = 0x1
  w7 = *(u8 *)(r1 + 0x1d0)
  if r7 == 0x0 goto jmp_0330
  r7 = 0x1
  *(u8 *)(r5 + 0x0) = w7
  r4 += 0x1

jmp_0108:
  r0 += 0x20
  r5 += 0x1
  r8 += -0x20
  if r8 == 0x0 goto jmp_0140

jmp_0128:
  r9 = *(u64 *)(r0 - 0x18)
  if r9 != r6 goto jmp_0108
  goto jmp_0080

jmp_0140:
  r5 = r10
  r5 += -0x10
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x190)
  r8 = r3

jmp_0170:
  r9 = *(u64 *)(r0 - 0x18)
  if r9 != r6 goto jmp_0208
  r9 = *(u64 *)(r1 + 0x198)
  r7 = *(u64 *)(r0 - 0x10)
  if r7 != r9 goto jmp_0208
  r7 = *(u64 *)(r1 + 0x1a0)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r7 goto jmp_0208
  r7 = *(u64 *)(r1 + 0x1a8)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 != r7 goto jmp_0208
  w7 = *(u8 *)(r5 + 0x0)
  if r7 != 0x0 goto jmp_0208
  r9 = 0x1
  w7 = *(u8 *)(r1 + 0x1d1)
  if r7 == 0x0 goto jmp_0330
  r7 = 0x1
  *(u8 *)(r5 + 0x0) = w7
  r4 += 0x1

jmp_0208:
  r0 += 0x20
  r5 += 0x1
  r8 += -0x20
  if r8 != 0x0 goto jmp_0170
  r5 = r10
  r5 += -0x10
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x1b0)
  r7 = 0x1

jmp_0258:
  r8 = *(u64 *)(r0 - 0x18)
  if r8 != r6 goto jmp_02e8
  r8 = *(u64 *)(r1 + 0x1b8)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r8 goto jmp_02e8
  r8 = *(u64 *)(r1 + 0x1c0)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r8 goto jmp_02e8
  r8 = *(u64 *)(r1 + 0x1c8)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 != r8 goto jmp_02e8
  w8 = *(u8 *)(r5 + 0x0)
  if r8 != 0x0 goto jmp_02e8
  r9 = 0x1
  w8 = *(u8 *)(r1 + 0x1d2)
  if r8 == 0x0 goto jmp_0330
  *(u8 *)(r5 + 0x0) = w7
  r4 += 0x1

jmp_02e8:
  r0 += 0x20
  r5 += 0x1
  r3 += -0x20
  if r3 == 0x0 goto jmp_0310
  goto jmp_0258

jmp_0310:
  r4 &= 0xff
  r9 = 0x1
  if r4 < r2 goto jmp_0330
  r9 = 0x0

jmp_0330:
  r1 = 0x1
  *(u64 *)(r10 - 0x18) = r1
  *(u64 *)(r10 - 0x20) = r9
  r1 = r10
  r1 += -0x20
  r0 = 0x0

jmp_0360:
  exit
