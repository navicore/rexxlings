/* Exercise: QUEUE — FIFO Order */

/* Queue three items — use QUEUE, not PUSH */
QUEUE 'red'
QUEUE 'green'
QUEUE 'blue'

/* Pull them back */
PULL first_out
PULL second_out
PULL third_out

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first_out, 'RED', 'First pulled should be RED (first queued)'
CALL assert_equal second_out, 'GREEN', 'Second pulled should be GREEN'
CALL assert_equal third_out, 'BLUE', 'Third pulled should be BLUE (last queued)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
