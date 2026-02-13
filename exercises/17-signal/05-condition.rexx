/* Exercise: CONDITION() — Querying Error Information
 *
 * Inside a SIGNAL ON trap handler, the CONDITION() built-in function
 * provides details about the trapped condition:
 *
 *   CONDITION('C')  =>  the condition name (e.g., 'SYNTAX')
 *   CONDITION('D')  =>  description of the error
 *
 * This lets you inspect what went wrong and respond accordingly.
 *
 * Your task: Set up a SYNTAX trap, trigger an error, and use
 * CONDITION('C') in the handler to verify the condition type.
 */

/* I AM NOT DONE */

cond_name = 'none'
cond_desc = ''

/* Set up the SYNTAX trap */
???

/* Trigger a syntax error */
x = 1 / 0

SIGNAL tests

/* Handler: use CONDITION() to get error info */
???
  cond_name = ???
  cond_desc = ???

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
