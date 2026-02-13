/* Exercise: DO UNTIL — Loop Until Condition Met
 *
 * DO UNTIL checks the condition AFTER each iteration.
 * The loop always runs at least once, and stops when the
 * condition becomes true:
 *
 *   DO UNTIL condition
 *     instructions
 *   END
 *
 * Note: DO WHILE runs while true; DO UNTIL runs until true.
 *
 * Your task: Use DO UNTIL to simulate adding items to a
 * container until the total weight reaches 50 or more.
 * Each item weighs 7.
 */

/* I AM NOT DONE */

totalWeight = 0
itemCount = 0
itemWeight = 7

/* Fix: loop until totalWeight >= 50 */
DO UNTIL ???
  totalWeight = totalWeight + itemWeight
  itemCount = ???
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal totalWeight, '56', 'total weight should be 56'
CALL assert_equal itemCount, '8', 'should need 8 items'
CALL assert_true totalWeight >= 50, 'total weight should be at least 50'
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
