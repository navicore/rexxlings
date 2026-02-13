/* Exercise: PUSH and PULL — LIFO Stack */

/* Push three items onto the queue */
PUSH 'first'
PUSH 'second'
PUSH 'third'

/* Pull them back — remember LIFO order and uppercasing */
PULL first_out
PULL second_out
PULL third_out

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first_out, 'THIRD', 'First pulled should be THIRD (last pushed)'
CALL assert_equal second_out, 'SECOND', 'Second pulled should be SECOND'
CALL assert_equal third_out, 'FIRST', 'Third pulled should be FIRST (first pushed)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
