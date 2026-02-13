/* Exercise: MAX() and MIN() with Multiple Arguments */

biggest  = MAX(10, 42, 7, 33)
smallest = MIN(15, 3, 8, 22)
max_neg  = MAX(-5, -1, -10)
min_mix  = MIN(4, -7, 0, 12)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal biggest, 42, 'MAX(10, 42, 7, 33) should be 42'
CALL assert_equal smallest, 3, 'MIN(15, 3, 8, 22) should be 3'
CALL assert_equal max_neg, -1, 'MAX(-5, -1, -10) should be -1'
CALL assert_equal min_mix, -7, 'MIN(4, -7, 0, 12) should be -7'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
