.globl entrypoint

entrypoint:
  r0 = r1
  r6 = 0x0
  w7 = *(u8 *)(r0 + 0x10)

jmp_0018:
  r1 = r7
  r1 += r6
  r2 = r1
  r2 &= 0xfe
  r2 >>= 0x1
  r2 *= 0xb3
  r2 >>= 0xc
  r2 *= 0x2e
  r1 -= r2
  r0 ^= r6
  r2 = r0
  call fn_00b8
  r6 += 0x1
  if r6 == 0x40 goto jmp_0090
  goto jmp_0018

jmp_0090:
  *(u64 *)(r10 - 0x8) = r0
  r1 = r10
  r1 += -0x8
  r0 = 0x0
  exit

fn_00b8:
  r0 = r2
  r2 = r1
  r2 &= 0xff
  if r2 s> 0xb goto jmp_0128
  if r2 s> 0x6 goto jmp_0160
  if r2 == 0x0 goto jmp_01e8
  if r2 == 0x1 goto jmp_0240
  if r2 == 0x3 goto jmp_0100
  goto jmp_01c0

jmp_0100:
  r1 = r0
  r1 >>= 0x3d
  r0 <<= 0x3
  r0 |= r1
  goto jmp_0278

jmp_0128:
  if r2 s> 0x11 goto jmp_01a8
  if r2 == 0xc goto jmp_01f8
  if r2 == 0xf goto jmp_0250
  if r2 == 0x11 goto jmp_0150
  goto jmp_01c0

jmp_0150:
  r0 ^= 0x11
  goto jmp_0278

jmp_0160:
  if r2 == 0x7 goto jmp_0208
  if r2 == 0x8 goto jmp_0260
  if r2 == 0x9 goto jmp_0180
  goto jmp_01c0

jmp_0180:
  r1 = r0
  r1 >>= 0x9
  r0 <<= 0x37
  r0 |= r1
  goto jmp_0278

jmp_01a8:
  if r2 == 0x12 goto jmp_0218
  if r2 == 0x14 goto jmp_0270
  if r2 == 0x16 goto jmp_01d8

jmp_01c0:
  r2 = r0
  call fn_0280
  goto jmp_0278

jmp_01d8:
  r0 += 0x16
  goto jmp_0278

jmp_01e8:
  r0 += 0x1
  goto jmp_0278

jmp_01f8:
  r0 += 0xc
  goto jmp_0278

jmp_0208:
  r0 *= 0x7
  goto jmp_0278

jmp_0218:
  r1 = r0
  r1 >>= 0x2e
  r0 <<= 0x12
  r0 |= r1
  goto jmp_0278

jmp_0240:
  r0 += -0x1
  goto jmp_0278

jmp_0250:
  r0 += -0xf
  goto jmp_0278

jmp_0260:
  r0 ^= 0x8
  goto jmp_0278

jmp_0270:
  r0 *= 0x14

jmp_0278:
  exit

fn_0280:
  r0 = -0x1
  r1 &= 0xff
  if r1 s> 0x9 goto jmp_02d8
  if r1 s> 0x4 goto jmp_0348
  if r1 == 0x2 goto jmp_0370
  if r1 == 0x4 goto jmp_02b8
  goto jmp_03d8

jmp_02b8:
  r1 = r2
  r1 >>= 0x3c
  r2 <<= 0x4
  goto jmp_03b8

jmp_02d8:
  if r1 s> 0x16 goto jmp_0308
  if r1 == 0xa goto jmp_03a0
  if r1 == 0xd goto jmp_02f8
  goto jmp_03d8

jmp_02f8:
  r2 += 0xd
  goto jmp_03d0

jmp_0308:
  if r1 == 0x17 goto jmp_0390
  if r1 == 0x26 goto jmp_03c8
  if r1 == 0x2d goto jmp_0328
  goto jmp_03d8

jmp_0328:
  r1 = r2
  r1 >>= 0x33
  r2 <<= 0xd
  goto jmp_03b8

jmp_0348:
  if r1 == 0x5 goto jmp_0380
  if r1 == 0x6 goto jmp_0360
  goto jmp_03d8

jmp_0360:
  r2 *= 0x6
  goto jmp_03d0

jmp_0370:
  r2 += 0x2
  goto jmp_03d0

jmp_0380:
  r2 ^= 0x5
  goto jmp_03d0

jmp_0390:
  r2 ^= 0x17
  goto jmp_03d0

jmp_03a0:
  r1 = r2
  r1 >>= 0xa
  r2 <<= 0x36

jmp_03b8:
  r2 |= r1
  goto jmp_03d0

jmp_03c8:
  r2 *= 0x26

jmp_03d0:
  r0 = r2

jmp_03d8:
  exit
