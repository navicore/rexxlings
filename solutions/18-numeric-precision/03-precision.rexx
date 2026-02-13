/* Exercise: Precision Effects on Division */

/* Compute 1/3 with 9 digits of precision */
NUMERIC DIGITS 9
result_9 = 1 / 3

/* Compute 1/3 with 30 digits of precision */
NUMERIC DIGITS 30
result_30 = 1 / 3

/* Count the length difference */
len_9  = LENGTH(result_9)
len_30 = LENGTH(result_30)
longer = (len_30 > len_9)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result_9, 0.333333333, '1/3 at DIGITS 9 should be 0.333333333'
CALL assert_equal LEFT(result_30, 6), '0.3333', '1/3 at DIGITS 30 should start with 0.3333'
CALL assert_equal longer, 1, 'DIGITS 30 result should be longer than DIGITS 9'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
