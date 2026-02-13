/* Exercise: PROCEDURE — Isolating Subroutine Variables */

msg = 'original'
CALL calculate 10, 20

sum = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum, 30, 'calculate should return 30'
CALL assert_equal msg, 'original', 'msg should still be original after call'
EXIT 0

calculate: PROCEDURE
  PARSE ARG a, b
  msg = 'changed inside subroutine'
  RETURN a + b

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
