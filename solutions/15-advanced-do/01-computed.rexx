/* Exercise: DO with Computed Bounds */

start  = 5
finish = 20
step   = 5

answer = ''
DO i = start TO finish BY step
  IF answer \= '' THEN answer = answer || ','
  answer = answer || i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, '5,10,15,20', 'Loop should produce 5,10,15,20'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
