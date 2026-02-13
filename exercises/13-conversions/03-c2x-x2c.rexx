/* Exercise: C2X() and X2C() — Character/Hex Conversion
 *
 * C2X(string) converts each character to its 2-digit hex code:
 *   C2X('A')     =>  '41'
 *   C2X('Hi')    =>  '4869'
 *
 * X2C(hexstring) converts pairs of hex digits to characters:
 *   X2C('41')    =>  'A'
 *   X2C('4869')  =>  'Hi'
 *
 * Your task: Use C2X() and X2C() to perform the conversions below.
 */

/* I AM NOT DONE */

hex_A    = ???
hex_Hi   = ???
char_41  = ???
char_OK  = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal hex_A, '41', 'C2X(A) should be 41'
CALL assert_equal hex_Hi, '4869', 'C2X(Hi) should be 4869'
CALL assert_equal char_41, 'A', 'X2C(41) should be A'
CALL assert_equal char_OK, 'OK', 'X2C(4F4B) should be OK'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
