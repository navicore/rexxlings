/* Exercise: TRUNC() — Truncating Decimal Numbers */

pi_2dec   = TRUNC(3.14159, 2)
pi_0dec   = TRUNC(3.14159, 0)
neg_trunc = TRUNC(-2.789, 1)
no_round  = TRUNC(9.999, 1)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal pi_2dec, 3.14, 'TRUNC(3.14159, 2) should be 3.14'
CALL assert_equal pi_0dec, 3, 'TRUNC(3.14159, 0) should be 3'
CALL assert_equal neg_trunc, -2.7, 'TRUNC(-2.789, 1) should be -2.7'
CALL assert_equal no_round, 9.9, 'TRUNC(9.999, 1) should be 9.9 (no rounding)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
