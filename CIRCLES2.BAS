' CIRCLES.BAS  1997 Tristan Behrens Software'

CLS 1
SCREEN 11
DO
a = 200

 FOR x = -a TO a STEP 2
 y = -(-x ^ 2 + a * a) ^ .5
 CIRCLE (320 + x, 200 + y), 20
 
 NEXT x

 FOR x = a TO -a STEP -2
 y = (-x ^ 2 + a * a) ^ .5
 CIRCLE (320 + x, 200 + y), 20
 
 NEXT x
 CLS
LOOP

