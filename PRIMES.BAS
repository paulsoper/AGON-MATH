    2 REM -----------------------------------------
    4 REM --
    6 REM -- PRIMES.BAS
    8 REM --
   10 REM -- PRIMES UP TO 1000 BY TRIAL DIVISION
   12 REM --
   14 REM -- PAUL SOPER - AUGUST 21, 2024
   16 REM --
   18 REM -----------------------------------------
   35 DIM P%(500) : P%(1) = 2
   40 C% = 1 : MAX% = 1000
   50 FOR N% = 3 TO MAX%
   60   FOR M% = 1 TO C%
   70     T% = N% MOD P%(M%)
   80     IF T% = 0 THEN 200
   90     IF (P%(M%)*P%(M%)+1) > N% THEN 110
  100   NEXT M%
  110   PRINT N%;
  120   C% = C% + 1
  130   P%(C%) = N%
  200 NEXT N%
  210 PRINT
