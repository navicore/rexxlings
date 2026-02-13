/* Exercise: PROCEDURE EXPOSE — Sharing Select Variables
 *
 * PROCEDURE isolates ALL variables. But sometimes you want a
 * subroutine to access or modify specific caller variables.
 *
 * PROCEDURE EXPOSE lists the variables to share:
 *
 *   increment: PROCEDURE EXPOSE counter
 *     counter = counter + 1
 *     RETURN
 *
 * Only the listed variables are visible; all others are local.
 *
 * Your task: Fix the `increment` subroutine so it can see and
 * modify the caller's `counter` variable. The subroutine already
 * has PROCEDURE but needs EXPOSE with the right variable name.
 */

/* I AM NOT DONE */

counter = 0

CALL increment
CALL increment
CALL increment

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal counter, 3, 'counter should be 3 after three increments'
EXIT 0

/* Fix: expose the counter variable */
increment: PROCEDURE
  counter = counter + 1
  RETURN

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
