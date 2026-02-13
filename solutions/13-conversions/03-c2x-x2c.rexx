/* Exercise: C2X() and X2C() — Character/Hex Conversion */

hex_A    = C2X('A')
hex_Hi   = C2X('Hi')
char_41  = X2C('41')
char_OK  = X2C('4F4B')

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
