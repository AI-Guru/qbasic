
'  PULSATE.BAS  1997 Tristan Behrens Software'

CLS
SCREEN 12


FOR y = 0 TO 300 STEP 1
x = SIN(y)

'Eyes'
CIRCLE (300 + x, 130 + x), 20 + x, , 1, 5.3
CIRCLE (325 + x, 130 + x), 20 + x

'Eye-lids'
LINE (282 + x, 125 + x)-(305 + x, 130 + x)
LINE (345 + x, 125 + x)-(305 + x, 130 + x)

'Iris'
CIRCLE (325 + x, 140 + x), 7 + x
CIRCLE (300 + x, 140 + x), 7 + x
CIRCLE (325 + x, 140 + x), 3 + x
CIRCLE (300 + x, 140 + x), 3 + x
CIRCLE (325 + x, 140 + x), 2 + x
CIRCLE (300 + x, 140 + x), 2 + x
CIRCLE (325 + x, 140 + x), 1 + x
CIRCLE (300 + x, 140 + x), 1 + x

'Nose'
LINE (312 + x, 275 + x)-(312 + x, 146 + x)
LINE (320 + x, 275 + x)-(320 + x, 165 + x)
CIRCLE (320 + x, 282 + x), 22 + x, , 2, 1.5, .75

'Ear'
LINE (332 + x, 200 + x)-(332 + x, 150 + x)
LINE (332 + x, 260 + x)-(332 + x, 225 + x)
CIRCLE (338 + x, 213 + x), 15 + x, , 4, 2.5, 1.5

'Head'
CIRCLE (325 + x, 310 + x), 50 + x, , 1.85, 1.4


'Mouth'
LINE (320 + x, 300 + x)-(320 + x, 320 + x)
LINE (295 + x, 320 + x)-(350 + x, 320 + x)


CLS
NEXT y

gross:
x = x + 1

klein:
x = x - 1

