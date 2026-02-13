/* Exercise: CALL and RETURN — Your First Subroutine
 *
 * In REXX, you can define a subroutine by placing a label followed
 * by a colon. You invoke it with CALL:
 *
 *   CALL label arg1, arg2
 *
 * The subroutine ends with RETURN, which can return a value.
 * The returned value is available in the special variable RESULT.
 *
 *   greeting:
 *     PARSE ARG whom
 *     RETURN 'Hi,' whom
 *
 *   CALL greeting 'World'
 *   SAY RESULT   -- prints: Hi, World
 *
 * Your task: Write a subroutine called `greet` that takes a name
 * and returns 'Hello, <name>!' — then CALL it so the tests pass.
 */

/* I AM NOT DONE */

/* Call the greet subroutine with the argument 'REXX' */
???

greeting = RESULT

/* Call it again with 'World' */
???

greeting2 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal greeting, 'Hello, REXX!', 'greet REXX should return Hello, REXX!'
CALL assert_equal greeting2, 'Hello, World!', 'greet World should return Hello, World!'
EXIT 0

/* Write your greet subroutine below */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
