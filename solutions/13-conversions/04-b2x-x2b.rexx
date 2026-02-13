/* Exercise: B2X() and X2B() — Binary/Hex Conversion */

hex_from_bin = B2X('1111')
hex_byte     = B2X('10100101')
bin_from_hex = X2B('1')
bin_ff       = X2B('FF')

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
