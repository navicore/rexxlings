/* Exercise: IF/THEN — Simple Conditional
 *
 * The IF instruction tests a condition and, when true, executes the
 * THEN instruction.
 *
 *   IF condition THEN instruction
 *
 * A condition is any expression that evaluates to 1 (true) or 0 (false).
 * Comparison operators like >=, <=, =, \= return 1 or 0.
 *
 * Your task: Set the variable `status` to 'adult' when age >= 18,
 * and set `category` to 'large' when size > 100.
 */

/* I AM NOT DONE */

age = 25
status = 'minor'

/* Fix: use IF/THEN to set status to 'adult' when age >= 18 */

size = 150
category = 'small'

/* Fix: use IF/THEN to set category to 'large' when size > 100 */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal status, 'adult', 'status should be adult when age is 25'
CALL assert_equal category, 'large', 'category should be large when size is 150'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
