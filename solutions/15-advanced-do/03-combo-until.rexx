/* Exercise: DO i = start TO end UNTIL condition */

power = 1
count = 0

DO i = 1 TO 20 UNTIL power > 100
  power = power * 2
  count = i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal power, 128, 'First power of 2 exceeding 100 should be 128'
CALL assert_equal count, 7, 'Should take 7 doublings (2^7 = 128)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
