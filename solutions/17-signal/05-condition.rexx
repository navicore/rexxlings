/* Exercise: CONDITION() — Querying Error Information */

cond_name = 'none'
cond_desc = ''

/* Set up the SYNTAX trap */
SIGNAL ON SYNTAX NAME syntax_handler

/* Trigger a syntax error */
x = 1 / 0

SIGNAL tests

/* Handler: use CONDITION() to get error info */
syntax_handler:
  cond_name = CONDITION('C')
  cond_desc = CONDITION('D')

tests:

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal cond_name, 'SYNTAX', 'CONDITION(C) should be SYNTAX'
has_desc = (LENGTH(cond_desc) > 0)
CALL assert_equal has_desc, 1, 'CONDITION(D) should return a non-empty description'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
