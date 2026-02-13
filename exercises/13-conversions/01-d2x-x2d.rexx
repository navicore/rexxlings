/* Exercise: D2X() and X2D() — Decimal/Hex Conversion
 *
 * D2X(decimal) converts a decimal number to its hexadecimal
 * representation (as a string):
 *   D2X(255)  =>  'FF'
 *   D2X(16)   =>  '10'
 *
 * X2D(hex) converts a hexadecimal string back to decimal:
 *   X2D('FF')  =>  255
 *   X2D('10')  =>  16
 *
 * Your task: Use D2X() and X2D() to perform the conversions below.
 */

/* I AM NOT DONE */

hex_255 = ???
hex_10  = ???
dec_ff  = ???
dec_a   = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal hex_255, 'FF', 'D2X(255) should be FF'
CALL assert_equal hex_10, 'A', 'D2X(10) should be A'
CALL assert_equal dec_ff, 255, 'X2D(FF) should be 255'
CALL assert_equal dec_a, 10, 'X2D(A) should be 10'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
