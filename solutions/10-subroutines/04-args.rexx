/* Exercise: PARSE ARG — Multiple Arguments */

CALL add 10, 20
sum1 = RESULT

CALL add 3, 7
sum2 = RESULT

CALL add 100, -50
sum3 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum1, 30, '10 + 20 should be 30'
CALL assert_equal sum2, 10, '3 + 7 should be 10'
CALL assert_equal sum3, 50, '100 + (-50) should be 50'
EXIT 0

add: PROCEDURE
  PARSE ARG a, b
  RETURN a + b

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
