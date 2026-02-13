/* Exercise: FORMAT() — Formatting Numbers
 *
 * FORMAT(number, before, after) formats a number with:
 *   - `before` spaces for digits before the decimal point
 *   - `after` digits after the decimal point
 *
 *   FORMAT(3.5, 4, 2)    =>  '  3.50'
 *   FORMAT(123.4, 5, 3)  =>  '  123.400'
 *
 * The result is right-justified in a field of `before` characters
 * for the integer part, and zero-padded to `after` digits for the
 * fractional part.
 *
 * FORMAT can also be called with just the number to normalize it:
 *   FORMAT('  3.0 ')  =>  '3.0'
 *
 * Your task: Use FORMAT() to produce the expected output strings.
 * Note: Use STRIP() on the result if you need to remove leading spaces.
 */

/* I AM NOT DONE */

fmt1 = ???
fmt2 = ???
fmt3 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal fmt1, '  3.50', 'FORMAT(3.5, 3, 2) should be "  3.50"'
CALL assert_equal fmt2, ' 42.000', 'FORMAT(42, 3, 3) should be " 42.000"'
CALL assert_equal STRIP(fmt3), '7.10', 'FORMAT(7.1, 2, 2) stripped should be "7.10"'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
