DECLARE SUB Delay ()
CLS
SCREEN 7
CIRCLE (10, 10), 1
CIRCLE (10, 10), 2, 7
CIRCLE (10, 10), 3, 8
DIM ball%(0 TO 10, 0 TO 10)
GET (5, 5)-(15, 15), ball%
        ballsize = 10
        limitleft = 0 + 1
        limitright = 320 - ballsize - 1
        limitup = 0 + 1
        limitdown = 200 - ballsize - 1
       CLS

        x = 160
        y = 100
 

    RANDOMIZE TIMER
    direction = INT(RND * 2) + 1
    IF direction = 1 THEN GOTO movedownleft
    IF direction = 2 THEN GOTO movedownright


movedownleft:
        DO
        PUT (x, y), ball%, PSET
        x = x - 1
        y = y + 1
        IF x = limitleft THEN GOTO movedownright
        IF y = limitdown THEN GOTO moveupleft
        IF x = limitleft AND y = limitdown THEN GOTO moveupright
        CALL Delay
        LOOP

movedownright:
        DO
        PUT (x, y), ball%, PSET
        x = x + 1
        y = y + 1
        IF x = limitright THEN GOTO movedownleft
        IF y = limitdown THEN GOTO moveupright
        IF x = limitright AND y = limitdown THEN GOTO moveupleft
        CALL Delay
        LOOP

moveupleft:
        DO
        PUT (x, y), ball%, PSET
        x = x - 1
        y = y - 1
        IF x = limitleft THEN GOTO moveupright
        IF y = limitup THEN GOTO movedownleft
        IF x = limitleft AND y = limitup THEN GOTO movedownright
        CALL Delay
        LOOP

moveupright:
        DO
        PUT (x, y), ball%, PSET
        x = x + 1
        y = y - 1
        IF x = limitright THEN GOTO moveupleft
        IF y = limitup THEN GOTO movedownright
        IF x = limitright AND y = limitup THEN GOTO movedownleft
        CALL Delay
        LOOP

SUB Delay
FOR x = 1 TO 100
NEXT x
END SUB

