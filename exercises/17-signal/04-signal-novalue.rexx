/* Exercise: SIGNAL ON NOVALUE — Catching Uninitialized Variables
 *
 * Normally in REXX, using an uninitialized variable returns its
 * name in uppercase. SIGNAL ON NOVALUE changes this behavior
 * to trap the error instead:
 *
 *   SIGNAL ON NOVALUE NAME handler
 *   SAY undefined_var    -- triggers NOVALUE trap
 *   ...
 *   handler:
 *     SAY 'Variable was not set!'
 *
 * This is useful for catching typos and missing initializations.
 *
 * Your task: Set up a NOVALUE trap, then trigger it by using
 * an uninitialized variable.
 */

/* I AM NOT DONE */

answer = 'not caught'

/* Set up the SIGNAL ON NOVALUE trap */
???

/* Use an uninitialized variable to trigger the trap */
x = ???

SIGNAL tests

/* Write the NOVALUE handler */
???
  answer = 'caught'

tests:

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 'caught', 'NOVALUE trap should catch uninitialized variable'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
