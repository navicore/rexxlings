/* Exercise: ABS() and SIGN() Functions
 *
 * REXX provides built-in functions for common numeric operations.
 *
 * ABS(number) returns the absolute value:
 *   ABS(-5)  =>  5
 *   ABS(3)   =>  3
 *
 * SIGN(number) returns -1, 0, or 1 depending on the sign:
 *   SIGN(-42)  =>  -1
 *   SIGN(0)    =>   0
 *   SIGN(17)   =>   1
 *
 * Your task: Use ABS() and SIGN() to set the variables below
 * so that the tests pass.
 */

/* I AM NOT DONE */

abs_answer = ???
sign_neg   = ???
sign_zero  = ???
sign_pos   = ???

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
