CLS
SCREEN 7 '13
        

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
   
  KEY 19, CHR$(0) + CHR$(32)
  ON KEY(19) GOSUB feuer
  KEY(19) ON



x = 160
y = 100

DO
PRINT x
PRINT y
  
 
   LINE (x, y)-(x, y)
  
   LINE (5 + x, y)-(x + 8, y)
   LINE (x - 5, y)-(x - 8, y)
   LINE (x, 5 + y)-(x, 8 + y)
   LINE (x, y - 5)-(x, y - 8)
  

   SLEEP
     CLS
     LOOP
    
    END
 
oben:
y = y - 1
RETURN

unten:
y = y + 1
RETURN

links:
x = x - 1
RETURN

rechts:
x = x + 1
RETURN

feuer:
LINE (x, y)-(160, 200), 12
LINE (x, y)-(161, 200), 12
LINE (x, y)-(162, 200), 12
LINE (x, y)-(163, 200), 12
LINE (x, y)-(164, 200), 12
LINE (x, y)-(165, 200), 12
LINE (x, y)-(166, 200), 12
LINE (x, y)-(167, 200), 12
LINE (x, y)-(168, 200), 12
LINE (x, y)-(169, 200), 12
LINE (x, y)-(170, 200), 12


LINE (x, y)-(640 - 0, 200), 12
LINE (x, y)-(640 - 1, 200), 12
LINE (x, y)-(640 - 2, 200), 12
LINE (x, y)-(640 - 3, 200), 12
LINE (x, y)-(640 - 4, 200), 12
LINE (x, y)-(640 - 5, 200), 12
LINE (x, y)-(640 - 6, 200), 12
LINE (x, y)-(640 - 7, 200), 12
LINE (x, y)-(640 - 8, 200), 12
LINE (x, y)-(640 - 9, 200), 12
LINE (x, y)-(640 - 10, 200), 12

a = 0
DO
a = a + 1
IF a = 1000 THEN GOTO aa
LOOP
aa:


RETURN


