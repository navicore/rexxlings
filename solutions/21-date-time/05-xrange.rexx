/* Exercise: XRANGE — Generating Character Ranges */

/* Generate the lowercase alphabet */
lower = XRANGE('a', 'z')

/* Generate the digit characters */
digits = XRANGE('0', '9')

/* Check lengths */
lower_len = LENGTH(lower)
digits_len = LENGTH(digits)

/* Check that specific characters are present */
has_a = POS('a', lower) > 0
has_z = POS('z', lower) > 0
has_0 = POS('0', digits) > 0
has_9 = POS('9', digits) > 0

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal lower_len, 26, 'Lowercase alphabet should have 26 characters'
CALL assert_equal digits_len, 10, 'Digits should have 10 characters'
CALL assert_equal has_a, 1, 'Lowercase should contain a'
CALL assert_equal has_z, 1, 'Lowercase should contain z'
CALL assert_equal has_0, 1, 'Digits should contain 0'
CALL assert_equal has_9, 1, 'Digits should contain 9'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
