/* Exercise: PARSE VAR — Basic Word Splitting */

greeting = 'Hello World from REXX'

/* Split into first word and the rest */
PARSE VAR greeting first rest

/* Split into three separate words plus remainder */
info = 'Alice 30 Engineer at Acme Corp'
PARSE VAR info name age job leftover

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first, 'Hello', 'first word'
CALL assert_equal rest, 'World from REXX', 'rest of greeting'
CALL assert_equal name, 'Alice', 'name parsed'
CALL assert_equal age, '30', 'age parsed'
CALL assert_equal job, 'Engineer', 'job parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
