
'  WEBSTER.BAS  1997 Tristan Behrens Software'

CLS
SCREEN 11
 
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

DO
 CIRCLE (320 + x, 440), 20
 SLEEP
 CLS
 LINE (320 + x, 420)-(320 + x, 420 + y)
LOOP

oben:
FOR a = 420 TO 0 STEP -.1
PSET (320 + x, a)
NEXT a
RETURN

unten:
y = y + 1
RETURN

rechts:
x = x + 1
RETURN

links:
x = x - 1
RETURN

