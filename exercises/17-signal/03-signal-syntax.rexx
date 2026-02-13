/* Exercise: SIGNAL ON SYNTAX — Catching Runtime Errors
 *
 * SIGNAL ON SYNTAX sets up a trap for syntax/runtime errors.
 * When an error occurs, control transfers to the named label:
 *
 *   SIGNAL ON SYNTAX NAME my_handler
 *   x = 1 / 0    -- causes a syntax error (division by zero)
 *   ...
 *   my_handler:
 *     SAY 'Caught an error!'
 *
 * This is REXX's form of exception handling.
 *
 * Your task: Set up a SYNTAX trap to catch a division-by-zero error
 * and set result to 'caught' in the handler.
 */

/* I AM NOT DONE */

answer = 'not caught'

/* Set up the SIGNAL ON SYNTAX trap */
???

/* This will cause a syntax error (division by zero) */
x = 1 / 0

/* If we get here, the trap did not work */
SIGNAL tests

/* Write the error handler label here */
???
  answer = 'caught'

tests:

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 'caught', 'SYNTAX trap should catch division by zero'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
