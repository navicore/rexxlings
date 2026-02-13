/* Exercise: NUMERIC DIGITS — Setting Precision */

/* Check the default precision */
default_digits = DIGITS()

/* Set precision to 20 digits */
NUMERIC DIGITS 20

/* Compute 2**50 (needs more than 9 digits) */
big_number = 2 ** 50

/* Check new precision */
new_digits = DIGITS()

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
