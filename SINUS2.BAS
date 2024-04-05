  
'  SINUS.BAS  1997 Tristan Behrens Software'

   CLS
                SCREEN 10
    a = 1
    FOR x = 0 TO 200 STEP .002
    y = -SIN(x)
    SCREEN 10
   
    b = 200 * y
    LINE (320 + b, x)-(320 + b, x)
    
    IF x = 200 THEN a = a + 1
    NEXT x

    

