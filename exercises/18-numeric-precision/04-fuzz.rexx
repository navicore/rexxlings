/* Exercise: NUMERIC FUZZ — The Fuzz Setting
 *
 * NUMERIC FUZZ n sets how many digits are ignored in comparisons.
 * The default is 0 (exact comparison within DIGITS precision).
 *
 * The FUZZ() built-in function returns the current fuzz setting:
 *
 *   NUMERIC FUZZ 3
 *   SAY FUZZ()   -- prints 3
 *
 * NUMERIC FUZZ must be less than NUMERIC DIGITS.
 *
 * Your task:
 * 1. Query the default FUZZ value
 * 2. Set FUZZ to 2 and query it
 * 3. Set it back to 0
 */

/* I AM NOT DONE */

/* Query the default fuzz setting */
default_fuzz = ???

/* Set fuzz to 2 */
???

/* Query the new fuzz setting */
new_fuzz = ???

/* Reset fuzz to 0 */
???

final_fuzz = FUZZ()

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal default_fuzz, 0, 'Default FUZZ should be 0'
CALL assert_equal new_fuzz, 2, 'After NUMERIC FUZZ 2, FUZZ() should be 2'
CALL assert_equal final_fuzz, 0, 'After reset, FUZZ() should be 0'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
