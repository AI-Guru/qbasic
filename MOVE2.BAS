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
   
  KEY 19, CHR$(0) + CHR$(32)
  ON KEY(19) GOSUB gross
  KEY(19) ON

  KEY 20, CHR$(0) + CHR$(46)
  ON KEY(20) GOSUB klein
  KEY(20) ON

  KEY 21, CHR$(0) + CHR$(30)
  ON KEY(21) GOSUB schnell
  KEY(18) ON
 
  KEY 22, CHR$(0) + CHR$(21)
  ON KEY(22) GOSUB langsam
  KEY(18) ON


DO
   a = 10 + b

   CIRCLE (320 + x, 400 + y), 20 + c
   CIRCLE (320 + x, 400 + y), 15 + c
   CIRCLE (320 + x, 400 + y), 10 + c
   
   SLEEP
     CLS
     LOOP
    
    END
 
oben:
y = y - a
RETURN

unten:
y = y + a
RETURN

links:
x = x - a
RETURN

rechts:
x = x + a
RETURN

gross:
c = c + 1
RETURN

klein:
c = c - 1
RETURN

schnell:
b = b + 1
RETURN

langsam:
b = b - 1
RETURN

