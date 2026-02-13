/* Exercise: Stem Basics — Array-Like Variables */

fruit.1 = 'apple'
fruit.2 = 'banana'
fruit.3 = 'cherry'
fruit.0 = 3

answer = ''
DO i = 1 TO fruit.0
  IF answer \= '' THEN answer = answer || ' '
  answer = answer || fruit.i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal fruit.0, 3, 'fruit.0 should be 3'
CALL assert_equal fruit.1, 'apple', 'fruit.1 should be apple'
CALL assert_equal fruit.2, 'banana', 'fruit.2 should be banana'
CALL assert_equal fruit.3, 'cherry', 'fruit.3 should be cherry'
CALL assert_equal answer, 'apple banana cherry', 'result should list all fruits'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
