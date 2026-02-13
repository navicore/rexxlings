/* Exercise: Uninitialized Variables
 *
 * In REXX, if you use a variable that has never been assigned,
 * it returns its own name IN UPPERCASE.
 *
 * For example:
 *   SAY hello
 * prints:  HELLO
 *
 * This is a unique REXX feature! The variable "hello" was never
 * assigned, so REXX returns the string 'HELLO'.
 *
 * Your task: Without assigning any new variables, predict what
 * each uninitialized variable returns. Fill in the expected
 * values so the tests pass.
 */

/* I AM NOT DONE */

result1 = foo
result2 = myvar
result3 = rexx_is_fun

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, ???, 'result1 should be the uppercased name of foo'
CALL assert_equal result2, ???, 'result2 should be the uppercased name of myvar'
CALL assert_equal result3, ???, 'result3 should be the uppercased name of rexx_is_fun'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
