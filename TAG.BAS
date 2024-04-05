DECLARE SUB title ()
DECLARE SUB keys ()
CLS


'  TAG! '
'     1997 Tristan Behrens Software'
'     Ziel: Fang den kleinen Kreis mit Deinem Seil!'
'     Tasten: 2  4  6  8 (auf dem Nummernblock, NumLock aus!)'

CALL title

SCREEN 1
CALL keys

a = -1

start:
x = 0
 y = 0
 a = a + 1

neu:
 CLS
 RANDOMIZE TIMER
 k = INT(RND * 320) + 1
 RANDOMIZE TIMER
 l = INT(RND * 200) + 1
 RANDOMIZE TIMER
 m = INT(RND * 320) + 1
 RANDOMIZE TIMER
 n = INT(RND * 200) + 1


DO
 g = k + x
 h = l + y

 CIRCLE (k, l), 10
 LINE (k, l)-(g, h)
 CIRCLE (g, h), 5
 LINE (m, n)-(m, n)
 CIRCLE (m, n), 5


 PRINT " Tags:"; a

 IF k < 20 THEN GOTO neu
 IF l < 20 THEN GOTO neu
 IF m < 20 THEN GOTO neu
 IF n < 20 THEN GOTO neu

 IF k >= 300 THEN GOTO neu
 IF l >= 180 THEN GOTO neu
 IF m >= 300 THEN GOTO neu
 IF n >= 180 THEN GOTO neu

 SLEEP

 IF k + x = m AND l + y = n THEN GOTO start
 CLS
 
LOOP

oben:
y = y - 1
RETURN

unten:
y = y + 1
RETURN

rechts:
x = x + 1
RETURN

links:
x = x - 1
RETURN

SUB keys
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

END SUB

SUB title
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                 лллллллллллллллллллл "
PRINT "                 лллллллллллллллллл "
PRINT "                       лллл           лллл      лллллллл     ллл "
PRINT "                      лллл           лл лл     лл            лллл "
PRINT "                     лллл           лл  лл    лл             лллл "
PRINT "                    лллл           лл   лл    лл             ллл"
PRINT "                   лллл           лл  лллл    лл    лллллл   лл"
PRINT "                  лллл           лл     лл    лл       лл    л"
PRINT "                 лллл           лл      лл     лл      лл     "
PRINT "                лллл           лл       лл      лллллллл     лл "
PRINT "               лллл"
PRINT
PRINT "                                  THE GAME"
PRINT
PRINT
PRINT

SLEEP 1
PRINT "  any key..."
SLEEP

END SUB

