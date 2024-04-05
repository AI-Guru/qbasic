
'  RANDOM1.BAS  1997 Tristan Behrens Software'

CLS
SCREEN 11


PRINT " A1                                      A2"
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT " B1                                      B2"

LINE (320, 0)-(320, 400)
LINE (0, 200)-(640, 200)
LINE (0, 0)-(0, 400)
LINE (0, 0)-(640, 0)
LINE (0, 400)-(640, 400)

a = 0

DO
RANDOMIZE TIMER
x = INT(RND * 640) + 1
y = INT(RND * 400) + 1
LINE (x, y)-(x, y)
a = a + 1
IF x = 750 THEN GOTO 1
LOOP

1
SLEEP

