/* Exercise: DO WHILE — Condition-Checked Loop
 *
 * DO WHILE checks the condition BEFORE each iteration.
 * The loop runs as long as the condition is true:
 *
 *   DO WHILE condition
 *     instructions
 *   END
 *
 * If the condition is false initially, the loop body never runs.
 *
 * Your task: Use DO WHILE to divide a number by 2 repeatedly
 * until it is less than 10.
 */

/* I AM NOT DONE */

num = 1600
steps = 0

/* Fix: write a DO WHILE loop that keeps halving num while num >= 10 */
DO WHILE ???
  num = num / 2
  steps = ???
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
