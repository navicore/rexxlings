/* Exercise: Large Number Arithmetic
 *
 * With NUMERIC DIGITS set high enough, REXX can handle very large
 * numbers with exact precision — no floating point errors!
 *
 *   NUMERIC DIGITS 50
 *   SAY 2**100    -- prints all 31 digits exactly
 *
 * Your task: Set NUMERIC DIGITS high enough and compute 2**100.
 * The result has 31 digits.
 */

/* I AM NOT DONE */

/* Set precision high enough for the computation */
???

/* Compute 2**100 */
answer = ???

/* How many digits does the result have? */
digit_count = ???

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
