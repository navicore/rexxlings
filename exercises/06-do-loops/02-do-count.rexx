/* Exercise: DO with Counter — Counting Loop
 *
 * A counted DO loop repeats a block a specific number of times:
 *
 *   DO i = start TO end
 *     instructions using i
 *   END
 *
 * The control variable (i) starts at `start`, increments by 1
 * each iteration, and stops after reaching `end`.
 *
 * Your task: Compute the sum of numbers from 1 to 10 using
 * a counted DO loop.
 */

/* I AM NOT DONE */

total = 0

/* Fix: write a DO loop from 1 TO 10 that adds i to total */
DO i = 1 TO ???
  total = ???
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
