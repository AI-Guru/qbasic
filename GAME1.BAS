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
     PRINT "Balls:"; balls
     PRINT "Score:"; score
   LINE (140 + xpaddle, 191)-(180 + xpaddle, 191), 8
   LINE (140 + xpaddle, 192)-(180 + xpaddle, 192), 7
   LINE (140 + xpaddle, 193)-(180 + xpaddle, 193), 15
   LINE (140 + xpaddle, 194)-(180 + xpaddle, 194), 15
   LINE (140 + xpaddle, 195)-(180 + xpaddle, 195), 7
   LINE (140 + xpaddle, 196)-(180 + xpaddle, 196), 8
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
   LINE (140 + xpaddle, 191)-(180 + xpaddle, 191), 8
   LINE (140 + xpaddle, 192)-(180 + xpaddle, 192), 7
   LINE (140 + xpaddle, 193)-(180 + xpaddle, 193), 15
   LINE (140 + xpaddle, 194)-(180 + xpaddle, 194), 15
   LINE (140 + xpaddle, 195)-(180 + xpaddle, 195), 7
   LINE (140 + xpaddle, 196)-(180 + xpaddle, 196), 8
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
   LINE (140 + xpaddle, 191)-(180 + xpaddle, 191), 8
   LINE (140 + xpaddle, 192)-(180 + xpaddle, 192), 7
   LINE (140 + xpaddle, 193)-(180 + xpaddle, 193), 15
   LINE (140 + xpaddle, 194)-(180 + xpaddle, 194), 15
   LINE (140 + xpaddle, 195)-(180 + xpaddle, 195), 7
   LINE (140 + xpaddle, 196)-(180 + xpaddle, 196), 8
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
   LINE (140 + xpaddle, 191)-(180 + xpaddle, 191), 8
   LINE (140 + xpaddle, 192)-(180 + xpaddle, 192), 7
   LINE (140 + xpaddle, 193)-(180 + xpaddle, 193), 15
   LINE (140 + xpaddle, 194)-(180 + xpaddle, 194), 15
   LINE (140 + xpaddle, 195)-(180 + xpaddle, 195), 7
   LINE (140 + xpaddle, 196)-(180 + xpaddle, 196), 8
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
xpaddle = xpaddle - 10
RETURN

movepaddleright:
xpaddle = xpaddle + 10
RETURN

