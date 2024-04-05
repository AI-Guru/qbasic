

'  LINES.BAS  1997 Tristan Behrens Software'

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

x = 160
y = 100

DO
LINE (0, 0)-(x, y)
LINE (320, 0)-(x, y)
LINE (0, 200)-(x, y)
LINE (320, 200)-(x, y)
IF x <= 0 THEN x = 0
IF x >= 320 THEN x = 320
IF y <= 0 THEN y = 0
IF y >= 200 THEN y = 200


SLEEP
CLS

LOOP

oben:
y = y - 1
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

