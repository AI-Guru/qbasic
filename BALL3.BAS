CLS
SCREEN 7
       
        ballsize = 2
        ballcolor = 15
        limitleft = 0 + ballsize
        limitright = 320 - ballsize
        limitup = 0 + ballsize
        limitdown = 200 - ballsize
        

        x = 160
        y = 100
   
    RANDOMIZE TIMER
    direction = INT(RND * 2) + 1
    IF direction = 1 THEN GOTO movedownleft
    IF direction = 2 THEN GOTO movedownright


movedownleft:
        DO
        CIRCLE (x, y), ballsize, ballcolor
        PAINT (x, y), ballcolor
        x = x - 1
        y = y + 1
        IF x = limitleft THEN GOTO movedownright
        IF y = limitdown THEN GOTO moveupleft
        IF x = limitleft AND y = limitdown THEN GOTO moveupright
        CLS
        LOOP

movedownright:
        DO
        CIRCLE (x, y), ballsize, ballcolor
        PAINT (x, y), ballcolor
        x = x + 1
        y = y + 1
        IF x = limitright THEN GOTO movedownleft
        IF y = limitdown THEN GOTO moveupright
        IF x = limitright AND y = limitdown THEN GOTO moveupleft
        CLS
        LOOP

moveupleft:
        DO
        CIRCLE (x, y), ballsize, ballcolor
        PAINT (x, y), ballcolor
        x = x - 1
        y = y - 1
        IF x = limitleft THEN GOTO moveupright
        IF y = limitup THEN GOTO movedownleft
        IF x = limitleft AND y = limitup THEN GOTO movedownright
        CLS
        LOOP

moveupright:
        DO
        CIRCLE (x, y), ballsize, ballcolor
        PAINT (x, y), ballcolor
        x = x + 1
        y = y - 1
        IF x = limitright THEN GOTO moveupleft
        IF y = limitup THEN GOTO movedownright
        IF x = limitright AND y = limitup THEN GOTO movedownleft
        CLS
        LOOP

