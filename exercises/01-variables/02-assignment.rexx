/* Exercise: Variable Assignment
 *
 * In REXX, you assign a variable with:
 *
 *   name = value
 *
 * Variable names are case-insensitive. All values in REXX are
 * strings, but strings that look like numbers can be used in
 * arithmetic.
 *
 * Your task: Assign the correct values to each variable so the
 * tests below pass.
 */

/* I AM NOT DONE */

greeting = ???
favorite_number = ???
language = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal greeting, 'Hello', 'greeting should be Hello'
CALL assert_equal favorite_number, '42', 'favorite_number should be 42'
CALL assert_equal language, 'REXX', 'language should be REXX'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
