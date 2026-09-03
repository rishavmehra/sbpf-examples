.globl entrypoint

entrypoint:
  r6 = r1
  r8 = 0x0
  w7 = *(u8 *)(r6 + 0x10)
  goto jmp_00c0

jmp_0020:
  w2 = *(u8 *)(r10 - 0x8)
  r3 = r2
  r3 &= 0x3f
  r6 = r1
  r6 <<= r3
  r2 = -r2
  r2 &= 0x3f
  r1 >>= r2
  r6 |= r1

jmp_0068:
  r1 = r8
  r1 += 0x1
  r2 = r8
  r2 &= 0xff
  r8 = r1
  if r2 < 0x3f goto jmp_00c0
  *(u64 *)(r10 - 0x18) = r6
  r1 = r10
  r1 += -0x18
  r0 = 0x0
  exit

jmp_00c0:
  r3 = r8
  r3 += r7
  r1 = r10
  r1 += -0x18
  r2 = r6
  call fn_0120
  r1 = *(u64 *)(r10 - 0x10)
  r2 = *(u64 *)(r10 - 0x18)
  if r2 != 0x1 goto jmp_0020
  r1 ^= r6
  r6 = r1
  goto jmp_0068

fn_0120:
  *(u8 *)(r1 + 0x10) = w3
  *(u64 *)(r1 + 0x8) = r2
  r2 = 0x0
  *(u64 *)(r1 + 0x0) = r2
  exit
