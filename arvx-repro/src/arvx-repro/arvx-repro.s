.globl entrypoint
entrypoint:
  # If arithmetic worked:   r1=20  r2=0  r3=1  r4=0  r5=10
  # Actual (silent jmp32):  r1=100 r2=7  r3=10 r4=9  r5=50

  # r1 = 100 / 5  (expected 20 = 0x14)
  mov64 r1, 100
  udiv64 r1, 5

  # r2 = upper-half(7 * 3)  (expected 0, small numbers)
  mov64 r2, 7
  uhmul64 r2, 3

  # r3 = 10 % 3  (expected 1)
  mov64 r3, 10
  urem64 r3, 3

  # r4 = upper-half-signed(9 * 4)  (expected 0)
  mov64 r4, 9
  shmul64 r4, 4

  # r5 = 50 / 5 signed  (expected 10 = 0xa)
  mov64 r5, 50
  sdiv64 r5, 5

  call sol_log_64_

  mov64 r0, 0
  exit
