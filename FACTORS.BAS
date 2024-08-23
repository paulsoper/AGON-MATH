   10 REM -------------------------------------------------
   20 REM --
   30 REM -- FACTORS.BAS
   40 REM --
   50 REM -- PRIME FACTORS OF INTEGERS BY TRIAL DIVISION
   60 REM --
   70 REM -- PAUL SOPER - AUGUST 21, 2024
   80 REM --
   90 REM -------------------------------------------------
  100 REM --
  105 :
  110 DIM P%(500) : P%(1) = 2
  120 C% = 1
  130 SC% = 0
  140 GOON% = 1
  150 N% = 2
  155 :
  160 REPEAT
  170   N% = N% + 1
  180   IF (N% MOD 16 > 0) THEN 200
  190   IF INSTR("qQ",GET$) THEN GOON% = 0
  200   PRINT N% " = ";
  210   ISPRIME% = 1
  220   D% = 1
  230   M% = N%
  240   REPEAT
  250     IF ((M% MOD P%(D%)) > 0) THEN GOTO 310
  260     PRINT ;P%(D%); " ";
  270     M% = M%/P%(D%)
  280     IF M% > 1 THEN PRINT "* ";
  290     ISPRIME% = 0
  300     GOTO 250
  310     D% = D% + 1
  320   UNTIL (D% > C%)
  330   IF (ISPRIME% = 1) THEN C% = C% + 1 : P%(C%) = N% : PRINT "PRIME"
  340   IF (ISPRIME% = 0) THEN PRINT
  350 UNTIL ((GOON% = 0) OR (C% > 490))
  360 PRINT
  370 END
