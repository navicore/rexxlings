/* Exercise: SIGNAL ON NOVALUE — Catching Uninitialized Variables */

answer = 'not caught'

/* Set up the SIGNAL ON NOVALUE trap */
SIGNAL ON NOVALUE NAME novalue_handler

/* Use an uninitialized variable to trigger the trap */
x = never_set_this_variable

SIGNAL tests

/* NOVALUE handler */
novalue_handler:
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
