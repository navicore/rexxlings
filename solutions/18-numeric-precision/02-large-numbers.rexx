/* Exercise: Large Number Arithmetic */

/* Set precision high enough for the computation */
NUMERIC DIGITS 50

/* Compute 2**100 */
answer = 2 ** 100

/* How many digits does the result have? */
digit_count = LENGTH(answer)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal digit_count, 31, '2**100 should have 31 digits'
CALL assert_equal LEFT(answer, 5), '12676', '2**100 should start with 12676'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
