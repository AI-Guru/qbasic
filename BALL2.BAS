CLS
SCREEN 7
        x = 160
        y = 100
   
    RANDOMIZE TIMER      'Zufallsgenerator fÅr die Startrichtung des Balls'
    a = INT(RND * 2) + 1
    IF a = 1 THEN GOTO movedownleft
    IF a = 2 THEN GOTO movedownright


movedownleft:
        DO
        CIRCLE (x, y), 2
        PAINT (x, y)
        x = x - 1
        y = y + 1
        IF x = 2 THEN GOTO movedownright
        IF y = 198 THEN GOTO moveupleft
        CLS
        LOOP

movedownright:
        DO
        CIRCLE (x, y), 2
        PAINT (x, y)
        x = x + 1
        y = y + 1
        IF x = 318 THEN GOTO movedownleft
        IF y = 198 THEN GOTO moveupright
        CLS
        LOOP

moveupleft:
        DO
        CIRCLE (x, y), 2
        PAINT (x, y)
        x = x - 1
        y = y - 1
        IF x = 2 THEN GOTO moveupright
        IF y = 2 THEN GOTO movedownleft
        CLS
        LOOP

moveupright:
        DO
        CIRCLE (x, y), 2
        PAINT (x, y)
        x = x + 1
        y = y - 1
        IF x = 318 THEN GOTO moveupleft
        IF y = 2 THEN GOTO movedownright
        CLS
        LOOP

