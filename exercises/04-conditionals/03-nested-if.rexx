/* Exercise: Nested IF — Classifying a Number
 *
 * You can nest IF statements inside each other to handle
 * multiple conditions:
 *
 *   IF condition1 THEN
 *     instruction
 *   ELSE
 *     IF condition2 THEN
 *       instruction
 *     ELSE
 *       instruction
 *
 * Your task: Classify three numbers as 'negative', 'zero', or
 * 'positive' using nested IF statements.
 */

/* I AM NOT DONE */

num1 = -5
num2 = 0
num3 = 42

/* Fix: classify num1 */
IF num1 < 0 THEN
  class1 = ???
ELSE
  IF num1 = 0 THEN
    class1 = ???
  ELSE
    class1 = ???

/* Fix: classify num2 */
class2 = ???

/* Fix: classify num3 */
class3 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal class1, 'negative', 'class1 should be negative for -5'
CALL assert_equal class2, 'zero', 'class2 should be zero for 0'
CALL assert_equal class3, 'positive', 'class3 should be positive for 42'
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
