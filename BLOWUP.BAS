
'  BLOWUP.BAS  1997 Tristan Behrens Software'
'  Tasten:   D  C

CLS
SCREEN 12
  KEY 19, CHR$(0) + CHR$(32)
  ON KEY(19) GOSUB gross
  KEY(19) ON

  KEY 20, CHR$(0) + CHR$(46)
  ON KEY(20) GOSUB klein
  KEY(20) ON

DO

'Eyes'
CIRCLE (300 + x, 130 + x), ((20 + x) ^ 2) ^ .5, , 1, 5.3
CIRCLE (325 + x, 130 + x), ((20 + x) ^ 2) ^ .5

'Eye-lids'
LINE (282 + x, 125 + x)-(305 + x, 130 + x)
LINE (345 + x, 125 + x)-(305 + x, 130 + x)

'Iris'
CIRCLE (325 + x, 140 + x), ((7 + x) ^ 2) ^ .5
CIRCLE (300 + x, 140 + x), ((7 + x) ^ 2) ^ .5
CIRCLE (325 + x, 140 + x), ((3 + x) ^ 2) ^ .5
CIRCLE (300 + x, 140 + x), ((3 + x) ^ 2) ^ .5
CIRCLE (325 + x, 140 + x), ((2 + x) ^ 2) ^ .5
CIRCLE (300 + x, 140 + x), ((2 + x) ^ 2) ^ .5
CIRCLE (325 + x, 140 + x), ((1 + x) ^ 2) ^ .5
CIRCLE (300 + x, 140 + x), ((1 + x) ^ 2) ^ .5

'Nose'
LINE (312 + x, 275 + x)-(312 + x, 146 + x)
LINE (320 + x, 275 + x)-(320 + x, 165 + x)
CIRCLE (320 + x, 282 + x), ((22 + x) ^ 2) ^ .5, , 2, 1.5, .75

'Ear'
LINE (332 + x, 200 + x)-(332 + x, 150 + x)
LINE (332 + x, 260 + x)-(332 + x, 225 + x)
CIRCLE (338 + x, 213 + x), ((15 + x) ^ 2) ^ .5, , 4, 2.5, 1.5

'Head'
CIRCLE (325 + x, 310 + x), ((50 + x) ^ 2) ^ .5, , 1.85, 1.4


'Mouth'
LINE (320 + x, 300 + x)-(320 + x, 320 + x)
LINE (295 + x, 320 + x)-(350 + x, 320 + x)

SLEEP
CLS
LOOP

gross:
x = x + 1
RETURN

klein:
x = x - 1
RETURN

