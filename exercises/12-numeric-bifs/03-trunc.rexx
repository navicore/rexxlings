/* Exercise: TRUNC() — Truncating Decimal Numbers
 *
 * TRUNC(number, n) truncates a number to n decimal places.
 * If n is omitted, it defaults to 0 (integer truncation).
 *
 *   TRUNC(3.14159, 2)  =>  3.14
 *   TRUNC(3.14159)     =>  3
 *   TRUNC(7.999, 1)    =>  7.9
 *
 * Note: TRUNC does NOT round — it simply cuts off extra digits.
 *
 * Your task: Use TRUNC() to set the variables below so the tests pass.
 */

/* I AM NOT DONE */

pi_2dec  = ???
pi_0dec  = ???
neg_trunc = ???
no_round  = ???

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
