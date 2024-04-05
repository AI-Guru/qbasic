CLS
SCREEN 12
Pi = 22 / 7

H = 10

 A = Pi / 10


Start1:
DO
 H = 10
 GK = SIN(A) * H
 AK = (H ^ 2 - GK ^ 2) ^ .5
IF A > Pi THEN A = Pi
LINE (320, 400)-(320 + GK, 400 - AK)



SLEEP
CLS
SELECT CASE INKEY$
 CASE CHR$(0) + "M": GOTO 1
 CASE CHR$(0) + "K": GOTO 2
 CASE "a": GOTO 3
END SELECT
LOOP

1 A = A + Pi / 10
GOTO Start1
2 A = A - Pi / 10
GOTO Start1
3
FOR H = 1 TO (640 ^ 2 + 480 ^ 2) ^ .5
 GK = SIN(A) * H
 AK = (H ^ 2 - GK ^ 2) ^ .5
PSET (320 + GK, 400 - AK)
NEXT H
GOTO Start1


