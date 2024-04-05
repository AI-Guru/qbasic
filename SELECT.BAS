selectcase = 1
start:
CLS



LOCATE 10, 30
PRINT "Play Audio-CD"
LOCATE 12, 30
PRINT "Stop Audio-CD"
LOCATE 14, 30
PRINT "Next Track"
LOCATE 16, 30
PRINT "Previous Track"

IF selectcase = 1 THEN
     LOCATE 10, 25
     PRINT " ->"
     END IF
IF selectcase = 2 THEN
     LOCATE 12, 25
     PRINT " ->"
     END IF
IF selectcase = 3 THEN
     LOCATE 14, 25
     PRINT " ->"
     END IF
IF selectcase = 4 THEN
     LOCATE 16, 25
     PRINT " ->"
     END IF
DO
SLEEP
SELECT CASE INKEY$
  CASE CHR$(0) + "H": GOTO up
  CASE CHR$(0) + "P": GOTO down
  CASE "a": GOSUB selectline
END SELECT
LOOP

up:
SELECT CASE selectcase
  CASE 1: selectcase = 4
  CASE 2: selectcase = 1
  CASE 3: selectcase = 2
  CASE 4: selectcase = 3
END SELECT
CLS
GOTO start

down:
SELECT CASE selectcase
  CASE 1: selectcase = 2
  CASE 2: selectcase = 3
  CASE 3: selectcase = 4
  CASE 4: selectcase = 1
END SELECT
CLS
GOTO start

selectline:
SELECT CASE selectcase
 CASE 1: SHELL "c:\mtm\playcd #1"
 CASE 2: SHELL "c:\mtm\playcd s"
 CASE 3: SHELL "c:\mtm\playcd +1"
 CASE 4: SHELL "c:\mtm\playcd -1"
END SELECT
RETURN

