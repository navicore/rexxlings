/* Exercise: CALL and RETURN — Your First Subroutine */

CALL greet 'REXX'

greeting = RESULT

CALL greet 'World'

greeting2 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal greeting, 'Hello, REXX!', 'greet REXX should return Hello, REXX!'
CALL assert_equal greeting2, 'Hello, World!', 'greet World should return Hello, World!'
EXIT 0

greet:
  PARSE ARG name
  RETURN 'Hello,' name'!'

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
