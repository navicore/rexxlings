/* Exercise: D2X() and X2D() — Decimal/Hex Conversion */

hex_255 = D2X(255)
hex_10  = D2X(10)
dec_ff  = X2D('FF')
dec_a   = X2D('A')

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
