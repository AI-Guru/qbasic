DECLARE SUB AntAim ()
DECLARE SUB Cage ()
DECLARE SUB ChangeAntDir ()
DECLARE SUB ClearAnts ()
DECLARE SUB PutAnts ()
DECLARE SUB MoveAnts ()
DECLARE SUB InitAnts ()

COMMON SHARED AntAmount
COMMON SHARED Index
CONST PI = 22 / 7
CONST AngleUnit = PI / 180
CONST TRUE = 1
CONST FALSE = 0

CLS
SCREEN 12
TYPE Attributes
 Angle AS DOUBLE
 x AS DOUBLE
 y AS DOUBLE
END TYPE

DIM SHARED Ant(1 TO 1000) AS Attributes


AntAmount = 20

InitAnts
Cage


DO
FOR Index = 1 TO AntAmount
 ClearAnts
 MoveAnts
 ChangeAntDir
 PutAnts
NEXT Index
LOOP UNTIL INKEY$ = CHR$(27)

SUB Cage
FOR x = 1 TO 3
LINE (x, x)-(319 - x, 199 - x), 1, B
NEXT x
END SUB

SUB ChangeAntDir


 SELECT CASE Ant(Index).Angle
  CASE 0
         IF POINT(Ant(Index).x - 1, Ant(Index).y) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 90
  CASE 1 TO 89
         SELECT CASE POINT(Ant(Index).x - 1, Ant(Index).y - 1)
            CASE IS <> 0: IF POINT(Ant(Index).x - 1, Ant(Index).y) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 90
                          IF POINT(Ant(Index).x, Ant(Index).y - 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 180
          END SELECT
  CASE 90
         IF POINT(Ant(Index).x, Ant(Index).y - 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 180
  CASE 91 TO 179
         SELECT CASE POINT(Ant(Index).x + 1, Ant(Index).y - 1)
            CASE IS <> 0:
                          IF POINT(Ant(Index).x + 1, Ant(Index).y) <> 0 THEN
                            Randomizer = INT(2 * RND) + 1
                            SELECT CASE Randomizer
                               CASE 1: Ant(Index).Angle = INT(RND * 90)
                               CASE 2: Ant(Index).Angle = INT(RND * 90) + 270
                            END SELECT
                           END IF
                              

                          IF POINT(Ant(Index).x, Ant(Index).y - 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 180
          END SELECT

  CASE 180
          IF POINT(Ant(Index).x + 1, Ant(Index).y) <> 0 THEN
           Randomizer = INT(2 * RND) + 1
           SELECT CASE Randomizer
            CASE 1: Ant(Index).Angle = INT(RND * 90)
            CASE 2: Ant(Index).Angle = INT(RND * 90) + 270
           END SELECT
          END IF
  CASE 181 TO 269
         SELECT CASE POINT(Ant(Index).x + 1, Ant(Index).y + 1)
            CASE IS <> 0:
                          IF POINT(Ant(Index).x, Ant(Index).y + 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180)
                          IF POINT(Ant(Index).x + 1, Ant(Index).y) <> 0 THEN
                               Randomizer = INT(2 * RND) + 1
                               SELECT CASE Randomizer
                                 CASE 1: Ant(Index).Angle = INT(RND * 90)
                                 CASE 2: Ant(Index).Angle = INT(RND * 90) + 270
                                END SELECT
                             END IF
                          
                          
          END SELECT

  CASE 270
         IF POINT(Ant(Index).x, Ant(Index).y + 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180)
 
  CASE IS > 270:
         SELECT CASE POINT(Ant(Index).x - 1, Ant(Index).y + 1)
            CASE IS <> 0: IF POINT(Ant(Index).x - 1, Ant(Index).y) <> 0 THEN Ant(Index).Angle = INT(RND * 180) + 90
                          IF POINT(Ant(Index).x, Ant(Index).y + 1) <> 0 THEN Ant(Index).Angle = INT(RND * 180)
          END SELECT

 END SELECT

IF Ant(Index).Angle = 360 THEN Ant(Index).Angle = 0
END SUB

SUB ClearAnts
 SELECT CASE Ant(Index).Angle
  CASE 0: CIRCLE (Ant(Index).x - 5, Ant(Index).y), 2, 0
          CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 1 TO 89
        CIRCLE (Ant(Index).x - COS(Ant(Index).Angle) * 5, Ant(Index).y - SIN(Ant(Index).Angle) * 5), 2, 0
        CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 90: CIRCLE (Ant(Index).x, Ant(Index).y - 5), 2, 0
           CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 91 TO 179
        CIRCLE (Ant(Index).x + COS(Ant(Index).Angle) * 5, Ant(Index).y - SIN(Ant(Index).Angle) * 5), 2, 0
        CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 180: CIRCLE (Ant(Index).x + 5, Ant(Index).y), 2, 0
            CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 181 TO 269
        CIRCLE (Ant(Index).x + COS(Ant(Index).Angle) * 5, Ant(Index).y + SIN(Ant(Index).Angle) * 5), 2, 0
        CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 270: CIRCLE (Ant(Index).x, Ant(Index).y + 5), 2, 0
            CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
  CASE 271 TO 359
        CIRCLE (Ant(Index).x - COS(Ant(Index).Angle) * 5, Ant(Index).y + SIN(Ant(Index).Angle) * 5), 2, 0
        CIRCLE (Ant(Index).x, Ant(Index).y), 3, 0
 END SELECT
END SUB

SUB InitAnts
RANDOMIZE TIMER
FOR Index = 1 TO AntAmount
 Ant(Index).Angle = INT(RND * 359) + 1
 Ant(Index).x = INT(RND * 310) + 4
 Ant(Index).y = INT(RND * 190) + 4
NEXT Index
END SUB

SUB MoveAnts
 SELECT CASE Ant(Index).Angle
  CASE 0: Ant(Index).x = Ant(Index).x - 1
  CASE 1 TO 89
        Ant(Index).x = Ant(Index).x - COS(Ant(Index).Angle * AngleUnit)
        Ant(Index).y = Ant(Index).y - SIN(Ant(Index).Angle * AngleUnit)
  CASE 90: Ant(Index).y = Ant(Index).y - 1
  CASE 91 TO 179
        Ant(Index).x = Ant(Index).x + SIN((Ant(Index).Angle - 90) * AngleUnit)
        Ant(Index).y = Ant(Index).y - COS((Ant(Index).Angle - 90) * AngleUnit)
  CASE 180: Ant(Index).x = Ant(Index).x + 1
  CASE 181 TO 269
        Ant(Index).x = Ant(Index).x + COS((Ant(Index).Angle - 180) * AngleUnit)
        Ant(Index).y = Ant(Index).y + SIN((Ant(Index).Angle - 180) * AngleUnit)
  CASE 270: Ant(Index).y = Ant(Index).y + 1
  CASE 271 TO 359
        Ant(Index).x = Ant(Index).x - SIN((Ant(Index).Angle - 270) * AngleUnit)
        Ant(Index).y = Ant(Index).y + COS((Ant(Index).Angle - 270) * AngleUnit)
 END SELECT
END SUB

SUB PutAnts
 SELECT CASE Ant(Index).Angle
  CASE 0: CIRCLE (Ant(Index).x - 5, Ant(Index).y), 2
          CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 1 TO 89
        CIRCLE (Ant(Index).x - COS(Ant(Index).Angle) * 5, Ant(Index).y - SIN(Ant(Index).Angle) * 5), 2
        CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 90: CIRCLE (Ant(Index).x, Ant(Index).y - 5), 2
           CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 91 TO 179
        CIRCLE (Ant(Index).x + COS(Ant(Index).Angle) * 5, Ant(Index).y - SIN(Ant(Index).Angle) * 5), 2
        CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 180: CIRCLE (Ant(Index).x + 5, Ant(Index).y), 2
            CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 181 TO 269
        CIRCLE (Ant(Index).x + COS(Ant(Index).Angle) * 5, Ant(Index).y + SIN(Ant(Index).Angle) * 5), 2
        CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 270: CIRCLE (Ant(Index).x, Ant(Index).y + 5), 2
            CIRCLE (Ant(Index).x, Ant(Index).y), 3
  CASE 271 TO 359
        CIRCLE (Ant(Index).x - COS(Ant(Index).Angle) * 5, Ant(Index).y + SIN(Ant(Index).Angle) * 5), 2
        CIRCLE (Ant(Index).x, Ant(Index).y), 3
 END SELECT
END SUB

