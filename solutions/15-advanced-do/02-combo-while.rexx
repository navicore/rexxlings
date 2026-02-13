/* Exercise: DO i = start TO end WHILE condition */

total = 0
last_i = 0

DO i = 1 TO 100 WHILE total < 15
  total = total + i
  last_i = i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal total, 15, 'Sum should be 15 (1+2+3+4+5)'
CALL assert_equal last_i, 5, 'Loop should stop at i=5'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
