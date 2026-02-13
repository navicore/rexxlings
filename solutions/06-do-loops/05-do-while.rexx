/* Exercise: DO WHILE — Condition-Checked Loop */

num = 1600
steps = 0

DO WHILE num >= 10
  num = num / 2
  steps = steps + 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal num, '6.25', 'num should be 6.25 after halving'
CALL assert_equal steps, '8', 'should take 8 halvings'
CALL assert_true num < 10, 'num should be less than 10'
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
