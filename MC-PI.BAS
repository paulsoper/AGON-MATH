    2 REM -----------------------------------
    4 REM --
    6 REM -- MONTE CARLO PI ESTIMATE
    8 REM -- 
   10 REM -- PAUL SOPER - AUGUST 21, 2024
   12 REM --
   14 REM -----------------------------------
   16 REM --
   25 MAX% = 100000 : N% = 10000 : S% = 0
   30 FOR I% = 1 TO N%
   40   X = RND(100000) : Y = RND(100000)
   50   X = X/MAX% : Y = Y/MAX%
   60   D = SQR(X*X + Y*Y)
   70   IF (D < 1) THEN S% = S% + 1
  100 NEXT I%
  110 PRINT "RANDOM POINTS: "; N%
  120 PE = 4*(S%/I%)
  130 PRINT "ESTIMATED PI: "; PE
  140 PRINT "PI: "; PI
  150 PRINT "ESTIMATE/ACTUAL: "; PE/PI
