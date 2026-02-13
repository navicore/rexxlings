/* Exercise: PROCEDURE — Isolating Subroutine Variables
 *
 * By default, subroutines share ALL variables with the caller.
 * This means a subroutine can accidentally overwrite your variables!
 *
 * The PROCEDURE keyword after a label isolates the subroutine's
 * variables so they do not affect the caller:
 *
 *   compute: PROCEDURE
 *     x = 99          -- this x is LOCAL, caller's x is unchanged
 *     RETURN x
 *
 * Without PROCEDURE, the subroutine's variables leak into the
 * caller's scope.
 *
 * Your task: The subroutine `calculate` below overwrites the
 * caller's `msg` variable. Add the PROCEDURE keyword to the
 * subroutine label so that the caller's `msg` is preserved.
 */

/* I AM NOT DONE */

msg = 'original'
CALL calculate 10, 20

sum = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum, 30, 'calculate should return 30'
CALL assert_equal msg, 'original', 'msg should still be original after call'
EXIT 0

/* Fix: add PROCEDURE to isolate variables */
calculate:
  PARSE ARG a, b
  msg = 'changed inside subroutine'
  RETURN a + b

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
