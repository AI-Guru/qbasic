
'  TEST3.BAS  1997 Tristan Behrens Software'

DECLARE SUB neu ()
1
CLS
SCREEN 11
CALL neu
FOR x = 1 TO 20 STEP .01
y = -x ^ 2

NEXT x
GOTO 1

SUB neu
FOR a = 1 TO 30 STEP 1
CIRCLE (320, 200), a
CLS
IF a = 50 THEN GOTO 2
NEXT a

2
FOR b = 1 TO 50
CIRCLE (320, 200), 50 - b
CLS
NEXT b
END SUB

