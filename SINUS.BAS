  
'  SINUS.BAS  1997 Tristan Behrens Software'

   CLS
                SCREEN 10
    LINE (0, 200)-(640, 200)
    LINE (0, 0)-(0, 400)


    FOR x = -1 TO 32 STEP .002
    y = -SIN(x)
    a = 50 * x
    b = 50 * y
    LINE (a, b + 200)-(a, b + 200)
   
    y = -COS(x)
    a = 50 * x
    b = 50 * y
    LINE (a, b + 200)-(a, b + 200)
    
   
    y = -TAN(x)
    a = 50 * x
    b = 50 * y
    LINE (a, b + 200)-(a, b + 200)
   
   
    NEXT x
   
    

