/* Exercise: 100! (Factorial) — Big Number Showcase
 *
 * 100! (100 factorial) is a famously large number:
 *   100! = 100 * 99 * 98 * ... * 2 * 1
 *
 * It has exactly 158 digits. REXX can compute it exactly
 * with NUMERIC DIGITS set high enough!
 *
 * Your task: Set NUMERIC DIGITS high enough and compute 100!.
 * Verify the result has 158 digits and starts with '93326'.
 */

/* I AM NOT DONE */

/* Set precision high enough for 100! */
???

/* Compute 100! using a loop */
factorial = ???
DO i = ??? TO ???
  ???
END

/* Count the digits */
digit_count = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal digit_count, 158, '100! should have 158 digits'
CALL assert_equal LEFT(factorial, 5), '93326', '100! should start with 93326'
CALL assert_equal RIGHT(factorial, 2), '00', '100! should end with 00'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
