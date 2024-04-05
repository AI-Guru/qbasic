
'  TAG2.BAS  1997 Tristan Behrens Software'


CLS
SCREEN 1

  KEY 15, CHR$(0) + CHR$(72)
  ON KEY(15) GOSUB oben
  KEY(15) ON

  KEY 16, CHR$(0) + CHR$(80)
  ON KEY(16) GOSUB unten
  KEY(16) ON

  KEY 17, CHR$(0) + CHR$(75)
  ON KEY(17) GOSUB links
  KEY(17) ON

  KEY 18, CHR$(0) + CHR$(77)
  ON KEY(18) GOSUB rechts
  KEY(18) ON
 
   x = 1
   y = 1
   a = 1

DO
y = a * x
LINE (160, 100)-(160 + x, 100 + y)
SLEEP
CLS
LOOP

oben:
a = a + 1
RETURN
unten:
a = a - 1
RETURN
rechts:
x = x + 1
RETURN
links:
x = x - 1
RETURN

