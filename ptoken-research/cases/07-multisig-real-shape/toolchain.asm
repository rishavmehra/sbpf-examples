.globl entrypoint

entrypoint:
  r0 = 0x2
  w3 = *(u8 *)(r1 + 0x1d3)
  w2 = *(u8 *)(r1 + 0x1d4)
  if r3 > 0xb goto jmp_0348
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r4 = 0x0
  if r3 == 0x0 goto jmp_0300
  r3 <<= 0x5
  r5 = r10
  r5 += -0x1000
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x170)
  r7 = r3
  goto jmp_00a0

jmp_0080:
  r0 += 0x20
  r5 += 0x1
  r7 += -0x20
  if r7 == 0x0 goto jmp_0130

jmp_00a0:
  r8 = *(u64 *)(r0 - 0x18)
  if r8 != r6 goto jmp_0080
  r8 = *(u64 *)(r1 + 0x178)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r8 goto jmp_0080
  r8 = *(u64 *)(r1 + 0x180)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r8 goto jmp_0080
  r8 = *(u64 *)(r1 + 0x188)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 != r8 goto jmp_0080
  w8 = *(u8 *)(r5 + 0x0)
  if r8 != 0x0 goto jmp_0080
  w8 = *(u8 *)(r1 + 0x1d0)
  if r8 == 0x0 goto jmp_02f0
  *(u8 *)(r5 + 0x0) = 0x1
  r4 += 0x1
  goto jmp_0080

jmp_0130:
  r5 = r10
  r5 += -0x1000
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x190)
  r7 = r3
  goto jmp_0188

jmp_0168:
  r0 += 0x20
  r5 += 0x1
  r7 += -0x20
  if r7 == 0x0 goto jmp_0218

jmp_0188:
  r8 = *(u64 *)(r0 - 0x18)
  if r8 != r6 goto jmp_0168
  r8 = *(u64 *)(r1 + 0x198)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r8 goto jmp_0168
  r8 = *(u64 *)(r1 + 0x1a0)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r8 goto jmp_0168
  r8 = *(u64 *)(r1 + 0x1a8)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 != r8 goto jmp_0168
  w8 = *(u8 *)(r5 + 0x0)
  if r8 != 0x0 goto jmp_0168
  w8 = *(u8 *)(r1 + 0x1d1)
  if r8 == 0x0 goto jmp_02f0
  *(u8 *)(r5 + 0x0) = 0x1
  r4 += 0x1
  goto jmp_0168

jmp_0218:
  r5 = r10
  r5 += -0x1000
  r0 = r1
  r0 += 0x28
  r6 = *(u64 *)(r1 + 0x1b0)
  goto jmp_0278

jmp_0248:
  *(u8 *)(r5 + 0x0) = 0x1
  r4 += 0x1

jmp_0258:
  r0 += 0x20
  r5 += 0x1
  r3 += -0x20
  if r3 == 0x0 goto jmp_0300

jmp_0278:
  r7 = *(u64 *)(r0 - 0x18)
  if r7 != r6 goto jmp_0258
  r7 = *(u64 *)(r1 + 0x1b8)
  r8 = *(u64 *)(r0 - 0x10)
  if r8 != r7 goto jmp_0258
  r7 = *(u64 *)(r1 + 0x1c0)
  r8 = *(u64 *)(r0 - 0x8)
  if r8 != r7 goto jmp_0258
  r7 = *(u64 *)(r1 + 0x1c8)
  r8 = *(u64 *)(r0 + 0x0)
  if r8 != r7 goto jmp_0258
  w7 = *(u8 *)(r5 + 0x0)
  if r7 != 0x0 goto jmp_0258
  w7 = *(u8 *)(r1 + 0x1d2)
  if r7 != 0x0 goto jmp_0248

jmp_02f0:
  r1 = 0x1
  goto jmp_0320

jmp_0300:
  r4 &= 0xff
  r1 = 0x1
  if r4 < r2 goto jmp_0320
  r1 = 0x0

jmp_0320:
  *(u64 *)(r10 - 0x1000) = r1
  *(u64 *)(r10 - 0xff8) = 0x1
  r1 = r10
  r1 += -0x1000
  r0 = 0x0

jmp_0348:
  exit
