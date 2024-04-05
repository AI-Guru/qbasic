
'  SERPENT.BAS  1997 Tristan Behrens Software'

CLS
SCREEN 12

 FOR x = 1 TO 20 STEP .002
 y = -SIN(x)
 CIRCLE (30 * x, 200 + 30 * y), x, 2
 
 NEXT x
 
 CIRCLE (600, 160), 5, 9
 CIRCLE (608, 180), 5, 9
 PAINT (608, 180), 9, 9
 PAINT (600, 160), 9, 9

 FOR a = 1 TO 20 STEP .005
 y = -SIN(a)
 CIRCLE (30 * a, 200 + 30 * y), .5, 4
 NEXT a
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
 PRINT
 PRINT
 PRINT
 PRINT
 PRINT
 PRINT
 PRINT
 PRINT "                                 Shadow of the SERPENT"

