/* Exercise: PROCEDURE EXPOSE — Sharing Select Variables */

counter = 0

CALL increment
CALL increment
CALL increment

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal counter, 3, 'counter should be 3 after three increments'
EXIT 0

increment: PROCEDURE EXPOSE counter
  counter = counter + 1
  RETURN

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
