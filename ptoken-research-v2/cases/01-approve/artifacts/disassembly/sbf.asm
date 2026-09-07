.globl entrypoint

entrypoint:
  mov64 r2, r1
  add64 r2, 0x8
  ldxdw r5, [r1+0x0]
  jeq r5, 0x0, jmp_0088
  stxdw [r10-0x1000], r2
  ldxdw r3, [r1+0x58]
  add64 r1, r3
  add64 r1, 0x286f
  and64 r1, -0x8
  jne r5, 0x1, jmp_00b0
  mov64 r3, 0x1
  mov64 r5, r2
  mov64 r2, r1
  mov64 r0, 0xc
  ldxdw r6, [r2+0x0]
  jge r6, 0x9, jmp_0358
  ja jmp_04a8

jmp_0088:
  mov64 r3, 0x0
  mov64 r0, 0xc
  ldxdw r6, [r2+0x0]
  jge r6, 0x9, jmp_0358
  ja jmp_04a8

jmp_00b0:
  mov64 r3, r5
  jlt r5, 0x3, jmp_00c8
  mov64 r3, 0x3

jmp_00c8:
  ldxb r4, [r1+0x0]
  mov64 r0, r5
  sub64 r0, r3
  jne r5, 0x2, jmp_0130
  jne r4, 0xff, jmp_0250
  stxdw [r10-0xff8], r1
  ldxdw r4, [r1+0x50]
  mov64 r6, r1
  add64 r6, r4
  add64 r6, 0x2867
  and64 r6, -0x8

jmp_0120:
  jne r0, 0x0, jmp_01b0
  ja jmp_0330

jmp_0130:
  jne r4, 0xff, jmp_0298
  ldxdw r6, [r1+0x50]
  mov64 r4, r1
  add64 r4, r6
  add64 r4, 0x2867
  and64 r4, -0x8
  stxdw [r10-0xff8], r1
  ldxb r6, [r4+0x0]
  jne r6, 0xff, jmp_02e8

jmp_0178:
  stxdw [r10-0xff0], r4
  ldxdw r7, [r4+0x50]
  mov64 r6, r4
  add64 r6, r7
  add64 r6, 0x2867
  and64 r6, -0x8
  jeq r0, 0x0, jmp_0330

jmp_01b0:
  mov64 r0, r3
  sub64 r0, r5
  ja jmp_01d0

jmp_01c8:
  jeq r5, 0x1, jmp_0330

jmp_01d0:
  ldxb r5, [r6+0x0]
  jeq r5, 0xff, jmp_0208
  add64 r6, 0x8
  add64 r0, 0x1
  mov64 r5, 0x1
  jeq r0, 0x0, jmp_01c8
  ja jmp_0240

jmp_0208:
  ldxdw r5, [r6+0x50]
  add64 r6, r5
  add64 r6, 0x2867
  and64 r6, -0x8
  add64 r0, 0x1
  mov64 r5, 0x1
  jeq r0, 0x0, jmp_01c8

jmp_0240:
  mov64 r5, 0x0
  ja jmp_01c8

jmp_0250:
  lsh64 r4, 0x3
  mov64 r7, r10
  add64 r7, -0x1000
  add64 r7, r4
  mov64 r6, r1
  add64 r6, 0x8
  ldxdw r1, [r7+0x0]
  stxdw [r10-0xff8], r1
  ja jmp_0120

jmp_0298:
  lsh64 r4, 0x3
  mov64 r6, r10
  add64 r6, -0x1000
  add64 r6, r4
  mov64 r4, r1
  add64 r4, 0x8
  ldxdw r1, [r6+0x0]
  stxdw [r10-0xff8], r1
  ldxb r6, [r4+0x0]
  jeq r6, 0xff, jmp_0178

jmp_02e8:
  lsh64 r6, 0x3
  mov64 r7, r10
  add64 r7, -0x1000
  add64 r7, r6
  mov64 r6, r4
  add64 r6, 0x8
  ldxdw r4, [r7+0x0]
  stxdw [r10-0xff0], r4
  jne r0, 0x0, jmp_01b0

jmp_0330:
  mov64 r5, r2
  mov64 r2, r6
  mov64 r0, 0xc
  ldxdw r6, [r2+0x0]
  jlt r6, 0x9, jmp_04a8

jmp_0358:
  ldxb r6, [r2+0x8]
  jne r6, 0x4, jmp_04a8
  lddw r0, 0xb00000000
  jne r3, 0x3, jmp_04a8
  lddw r0, 0x400000000
  ldxdw r3, [r5+0x50]
  jne r3, 0xa5, jmp_04a8
  ldxb r3, [r5+0xc4]
  jgt r3, 0x2, jmp_04a8
  jeq r3, 0x2, jmp_04a0
  jeq r3, 0x0, jmp_04b0
  mov64 r0, 0x4
  ldxdw r3, [r4+0x8]
  ldxdw r6, [r5+0x78]
  jne r6, r3, jmp_04a8
  ldxdw r3, [r4+0x10]
  ldxdw r6, [r5+0x80]
  jne r6, r3, jmp_04a8
  ldxdw r3, [r4+0x18]
  ldxdw r6, [r5+0x88]
  jne r6, r3, jmp_04a8
  ldxdw r3, [r4+0x20]
  ldxdw r6, [r5+0x90]
  jne r6, r3, jmp_04a8
  ldxb r3, [r4+0x1]
  jeq r3, 0x0, jmp_04c8
  ldxdw r2, [r2+0x9]
  stb [r5+0xa0], 0x1
  ldxdw r3, [r1+0x8]
  ldxdw r4, [r1+0x10]
  ldxdw r0, [r1+0x18]
  ldxdw r1, [r1+0x20]
  stxdw [r5+0xbc], r1
  stxdw [r5+0xb4], r0
  stxdw [r5+0xac], r4
  stxdw [r5+0xa4], r3
  stxdw [r5+0xd1], r2
  mov64 r0, 0x0
  ja jmp_04a8

jmp_04a0:
  mov64 r0, 0x11

jmp_04a8:
  exit

jmp_04b0:
  lddw r0, 0xa00000000
  ja jmp_04a8

jmp_04c8:
  lddw r0, 0x800000000
  ja jmp_04a8
