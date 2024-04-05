CLS
SCREEN 7
        balls = 5
        ballsize = 3
        limitleft = 0 + ballsize
        limitright = 320 - ballsize
        limitup = 0 + ballsize
        limitdown = 200 - ballsize
        

       
        xball = 160
        yball = 100
        xpaddlea = 140
        xpaddlee = 180

  KEY 17, CHR$(0) + CHR$(75)
  ON KEY(17) GOSUB movepaddleleft
  KEY(17) ON

  KEY 18, CHR$(0) + CHR$(77)
  ON KEY(18) GOSUB movepaddleright
  KEY(18) ON
  

    RANDOMIZE TIMER
    direction = INT(RND * 2) + 1
    IF direction = 1 THEN GOTO movedownleft
    IF direction = 2 THEN GOTO movedownright


   
movedownleft:
        DO
     platz = 0
     PRINT "Balls:"; balls
     PRINT "Score:"; score
   LINE (xpaddlea, 191)-(xpaddlee, 191), 8
   LINE (xpaddlea, 192)-(xpaddlee, 192), 7
   LINE (xpaddlea, 193)-(xpaddlee, 193), 15
   LINE (xpaddlea, 194)-(xpaddlee, 194), 15
   LINE (xpaddlea, 195)-(xpaddlee, 195), 7
   LINE (xpaddlea, 196)-(xpaddlee, 196), 8
        CIRCLE (xball, yball), 3, 8
        CIRCLE (xball, yball), 2, 7
        CIRCLE (xball, yball), 1, 17
        xball = xball - 1
        yball = yball + 1
        IF xball = limitleft THEN GOTO movedownright
        IF yball = limitdown THEN balls = balls - 1
        IF yball = limitdown THEN GOTO moveupleft
        IF xball = limitleft AND yball = limitdown THEN GOTO moveupright
        CLS
        LOOP
        
movedownright:
        DO
     PRINT "Balls:"; balls
     PRINT "Score:"; score
   LINE (xpaddlea, 191)-(xpaddlee, 191), 8
   LINE (xpaddlea, 192)-(xpaddlee, 192), 7
   LINE (xpaddlea, 193)-(xpaddlee, 193), 15
   LINE (xpaddlea, 194)-(xpaddlee, 194), 15
   LINE (xpaddlea, 195)-(xpaddlee, 195), 7
   LINE (xpaddlea, 196)-(xpaddlee, 196), 8
        CIRCLE (xball, yball), 3, 8
        CIRCLE (xball, yball), 2, 7
        CIRCLE (xball, yball), 1, 17
        xball = xball + 1
        yball = yball + 1
        IF xball = limitright THEN GOTO movedownleft
        IF yball = limitdown THEN balls = balls - 1
        IF yball = limitdown THEN GOTO moveupright
        IF xball = limitright AND yball = limitdown THEN GOTO moveupleft
        CLS
        LOOP

moveupleft:
        DO
     PRINT "Balls:"; balls
     PRINT "Score:"; score
   LINE (xpaddlea, 191)-(xpaddlee, 191), 8
   LINE (xpaddlea, 192)-(xpaddlee, 192), 7
   LINE (xpaddlea, 193)-(xpaddlee, 193), 15
   LINE (xpaddlea, 194)-(xpaddlee, 194), 15
   LINE (xpaddlea, 195)-(xpaddlee, 195), 7
   LINE (xpaddlea, 196)-(xpaddlee, 196), 8
        CIRCLE (xball, yball), 3, 8
        CIRCLE (xball, yball), 2, 7
        CIRCLE (xball, yball), 1, 17
        xball = xball - 1
        yball = yball - 1
        IF xball = limitleft THEN GOTO moveupright
        IF yball = limitup THEN GOTO movedownleft
        IF xball = limitleft AND yball = limitup THEN GOTO movedownright
        CLS
        LOOP

moveupright:
        DO
     PRINT "Balls:"; balls
     PRINT "Score:"; score
   LINE (xpaddlea, 191)-(xpaddlee, 191), 8
   LINE (xpaddlea, 192)-(xpaddlee, 192), 7
   LINE (xpaddlea, 193)-(xpaddlee, 193), 15
   LINE (xpaddlea, 194)-(xpaddlee, 194), 15
   LINE (xpaddlea, 195)-(xpaddlee, 195), 7
   LINE (xpaddlea, 196)-(xpaddlee, 196), 8
        CIRCLE (xball, yball), 3, 8
        CIRCLE (xball, yball), 2, 7
        CIRCLE (xball, yball), 1, 17
        xball = xball + 1
        yball = yball - 1
        IF xball = limitright THEN GOTO moveupleft
        IF yball = limitup THEN GOTO movedownright
        IF xball = limitright AND yball = limitup THEN GOTO movedownleft
        CLS
        LOOP



movepaddleleft:
xpaddlea = xpaddlea - 10
xpaddlee = xpaddlee - 10
RETURN

movepaddleright:
xpaddlea = xpaddlea + 10
xpaddlee = xpaddlee + 10
RETURN

