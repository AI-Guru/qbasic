 SELECT CASE Variable(Index).Angle
  CASE 0: Variable(Index).x = Variable(Index).x - Steps
  CASE 1 TO 89
        Variable(Index).x = Variable(Index).x - COS(Variable(Index).Angle * AngleUnit) * Steps
        Variable(Index).y = Variable(Index).y - SIN(Variable(Index).Angle * AngleUnit) * Steps
  CASE 90: Variable(Index).y = Variable(Index).y - Steps
  CASE 91 TO 179
        Variable(Index).x = Variable(Index).x + SIN((Variable(Index).Angle - 90) * AngleUnit) * Steps
        Variable(Index).y = Variable(Index).y - COS((Variable(Index).Angle - 90) * AngleUnit) * Steps
  CASE 180: Variable(Index).x = Variable(Index).x + Steps
  CASE 181 TO 269
        Variable(Index).x = Variable(Index).x + COS((Variable(Index).Angle - 180) * AngleUnit) * Steps
        Variable(Index).y = Variable(Index).y + SIN((Variable(Index).Angle - 180) * AngleUnit) * Steps
  CASE 270: Variable(Index).y = Variable(Index).y + Steps
  CASE 271 TO 359
        Variable(Index).x = Variable(Index).x - SIN((Variable(Index).Angle - 270) * AngleUnit) * Steps
        Variable(Index).y = Variable(Index).y + COS((Variable(Index).Angle - 270) * AngleUnit) * Steps
 END SELECT

