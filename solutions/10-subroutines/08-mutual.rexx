/* Exercise: Mutual Recursion — isEven / isOdd */

e0 = isEven(0)
e4 = isEven(4)
e7 = isEven(7)
o3 = isOdd(3)
o6 = isOdd(6)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal e0, 1, 'isEven(0) should be 1'
CALL assert_equal e4, 1, 'isEven(4) should be 1'
CALL assert_equal e7, 0, 'isEven(7) should be 0'
CALL assert_equal o3, 1, 'isOdd(3) should be 1'
CALL assert_equal o6, 0, 'isOdd(6) should be 0'
EXIT 0

isEven: PROCEDURE
  PARSE ARG n
  IF n = 0 THEN RETURN 1
  RETURN isOdd(n - 1)

isOdd: PROCEDURE
  PARSE ARG n
  IF n = 0 THEN RETURN 0
  RETURN isEven(n - 1)

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
