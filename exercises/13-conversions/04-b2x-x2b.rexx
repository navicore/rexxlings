/* Exercise: B2X() and X2B() — Binary/Hex Conversion
 *
 * B2X(binary) converts a binary string (0s and 1s) to hexadecimal:
 *   B2X('11111111')  =>  'FF'
 *   B2X('0001')      =>  '1'
 *   B2X('00010010')  =>  '12'
 *
 * X2B(hex) converts a hex string to binary:
 *   X2B('FF')   =>  '11111111'
 *   X2B('1')    =>  '0001'
 *   X2B('A3')   =>  '10100011'
 *
 * Your task: Use B2X() and X2B() to perform the conversions below.
 */

/* I AM NOT DONE */

hex_from_bin = ???
hex_byte     = ???
bin_from_hex = ???
bin_ff       = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal hex_from_bin, 'F', 'B2X(1111) should be F'
CALL assert_equal hex_byte, 'A5', 'B2X(10100101) should be A5'
CALL assert_equal bin_from_hex, '0001', 'X2B(1) should be 0001'
CALL assert_equal bin_ff, '11111111', 'X2B(FF) should be 11111111'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
