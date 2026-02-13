/* Exercise: SIGNAL ON SYNTAX — Catching Runtime Errors */

answer = 'not caught'

/* Set up the SIGNAL ON SYNTAX trap */
SIGNAL ON SYNTAX NAME syntax_error

/* This will cause a syntax error (division by zero) */
x = 1 / 0

/* If we get here, the trap did not work */
SIGNAL tests

/* Error handler */
syntax_error:
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
