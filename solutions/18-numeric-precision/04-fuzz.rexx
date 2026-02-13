/* Exercise: NUMERIC FUZZ — The Fuzz Setting */

/* Query the default fuzz setting */
default_fuzz = FUZZ()

/* Set fuzz to 2 */
NUMERIC FUZZ 2

/* Query the new fuzz setting */
new_fuzz = FUZZ()

/* Reset fuzz to 0 */
NUMERIC FUZZ 0

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
