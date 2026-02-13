/* Exercise: NUMERIC DIGITS — Setting Precision
 *
 * REXX performs arbitrary-precision arithmetic. By default, it uses
 * 9 significant digits. You can change this with NUMERIC DIGITS:
 *
 *   NUMERIC DIGITS 20
 *   SAY 2**50    -- prints all 16 digits: 1125899906842624
 *
 * The DIGITS() function returns the current precision setting.
 *
 * Your task: Set the precision and compute a large power of 2.
 */

/* I AM NOT DONE */

/* Check the default precision */
default_digits = ???

/* Set precision to 20 digits */
???

/* Compute 2**50 (needs more than 9 digits) */
big_number = ???

/* Check new precision */
new_digits = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal default_digits, 9, 'Default DIGITS should be 9'
CALL assert_equal big_number, 1125899906842624, '2**50 should be 1125899906842624'
CALL assert_equal new_digits, 20, 'After NUMERIC DIGITS 20, DIGITS() should be 20'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
