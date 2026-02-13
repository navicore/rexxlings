/* Exercise: DO with Counter — Counting Loop */

total = 0

DO i = 1 TO 10
  total = total + i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal total, '55', 'sum of 1 to 10 should be 55'
CALL assert_true total = 55, 'total should equal 55'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
