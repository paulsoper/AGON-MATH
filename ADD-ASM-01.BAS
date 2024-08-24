   10 DIM CODE% 8
   20 P% = CODE%
   30 B% = 25
   40 C% = 72
   50 [
   60 .SUM: DEFB 0
   70 LD A,B
   80 ADD A,C
   90 LD (SUM),A
  100 RET
  110 ]
  120 CALL CODE%
  130 MYSUM% = ?CODE%
  140 PRINT MYSUM%
