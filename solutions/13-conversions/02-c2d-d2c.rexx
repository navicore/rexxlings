/* Exercise: C2D() and D2C() — Character/Decimal Conversion */

dec_A   = C2D('A')
dec_z   = C2D('z')
char_65 = D2C(65)
char_97 = D2C(97)

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
