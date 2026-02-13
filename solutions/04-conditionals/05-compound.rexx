/* Exercise: Compound Conditions — & and | */

num = 15
inRange = 0
IF num >= 10 & num <= 20 THEN inRange = 1

day = 'Saturday'
isWeekend = 0
IF day = 'Saturday' | day = 'Sunday' THEN isWeekend = 1

height = 140
age = 12
canRide = 0
IF height >= 120 & age >= 10 THEN canRide = 1

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal inRange, '1', 'inRange should be 1 for num=15'
CALL assert_equal isWeekend, '1', 'isWeekend should be 1 for Saturday'
CALL assert_equal canRide, '1', 'canRide should be 1 (tall and old enough)'
CALL assert_true inRange = 1, 'inRange should be true'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
