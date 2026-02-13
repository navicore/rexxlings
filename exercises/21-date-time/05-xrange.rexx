/* Exercise: XRANGE — Generating Character Ranges
 *
 * XRANGE(start, end) generates a string containing all characters
 * from start to end (by character code):
 *
 *   XRANGE('a', 'z')  — all lowercase letters: 'abcdefghijklmnopqrstuvwxyz'
 *   XRANGE('0', '9')  — all digit characters: '0123456789'
 *   XRANGE('A', 'Z')  — all uppercase letters: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
 *
 * You can use POS to check if a character is in a range:
 *   IF POS(char, XRANGE('a','z')) > 0 THEN SAY 'lowercase!'
 *
 * Your task:
 * 1. Generate the lowercase alphabet with XRANGE
 * 2. Generate the digit characters with XRANGE
 * 3. Verify their lengths and contents
 */

/* I AM NOT DONE */

/* Generate the lowercase alphabet */
lower = ???

/* Generate the digit characters */
digits = ???

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
