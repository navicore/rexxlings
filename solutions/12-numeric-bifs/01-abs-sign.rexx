/* Exercise: ABS() and SIGN() Functions */

abs_answer = ABS(-42)
sign_neg   = SIGN(-99)
sign_zero  = SIGN(0)
sign_pos   = SIGN(7)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal abs_answer, 42, 'ABS(-42) should be 42'
CALL assert_equal sign_neg, -1, 'SIGN(-99) should be -1'
CALL assert_equal sign_zero, 0, 'SIGN(0) should be 0'
CALL assert_equal sign_pos, 1, 'SIGN(7) should be 1'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
