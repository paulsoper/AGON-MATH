    2 REM ----------------------------------------------
    4 REM --
    6 REM -- SIEVE.BAS
    8 REM --
   10 REM -- PRIMES UP TO 1000 BY A SIEVE 
   12 REM --
   14 REM -- PAUL SOPER - AUGUST 21, 2024
   16 REM --
   18 REM ----------------------------------------------
   19 REM --
   20 DIM X%(1000)
   25 DIM P%(500)
   30 FOR I% = 1 TO 1000 : X%(I%) = 1 : NEXT I%
   40 X%(1) = 0
   50 A% = 2
   60 REPEAT
   70   D% = A%
   80   REPEAT
   90     D% = D% + A%
  100     IF D% < 1001 THEN X%(D%) = 0
  110   UNTIL D% > 1000
  120   REPEAT
  130     A% = A% + 1
  140   UNTIL X%(A%) = 1
  150 UNTIL A% > 499
  200 C% = 1
  210 FOR I% = 1 TO 1000
  220   IF X%(I%) = 1 THEN P%(C%) = I% : C% = C% + 1
  230 NEXT I%
  235 @%=&00000909
  240 FOR I% = 1 TO C%-1
  250   PRINT P%(I%); " ";
  255   IF I% MOD 7 = 0 THEN PRINT
  260 NEXT I%
  270 PRINT
