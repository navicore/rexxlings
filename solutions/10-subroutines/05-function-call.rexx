/* Exercise: Function-Call Syntax */

d1 = double(5)
d2 = double(12)
s1 = square(4)
s2 = square(7)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal d1, 10, 'double(5) should be 10'
CALL assert_equal d2, 24, 'double(12) should be 24'
CALL assert_equal s1, 16, 'square(4) should be 16'
CALL assert_equal s2, 49, 'square(7) should be 49'
EXIT 0

double: PROCEDURE
  PARSE ARG n
  RETURN n * 2

square: PROCEDURE
  PARSE ARG n
  RETURN n * n

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
