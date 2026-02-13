/* Exercise: C2D() and D2C() — Character/Decimal Conversion
 *
 * C2D(char) converts a character to its decimal (ASCII) value:
 *   C2D('A')  =>  65
 *   C2D('0')  =>  48
 *
 * D2C(decimal) converts a decimal value to its character:
 *   D2C(65)   =>  'A'
 *   D2C(48)   =>  '0'
 *
 * Your task: Use C2D() and D2C() to perform the conversions below.
 */

/* I AM NOT DONE */

dec_A   = ???
dec_z   = ???
char_65 = ???
char_97 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal dec_A, 65, 'C2D(A) should be 65'
CALL assert_equal dec_z, 122, 'C2D(z) should be 122'
CALL assert_equal char_65, 'A', 'D2C(65) should be A'
CALL assert_equal char_97, 'a', 'D2C(97) should be a'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
