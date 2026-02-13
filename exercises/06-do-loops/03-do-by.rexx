/* Exercise: DO with BY — Step Value
 *
 * You can specify a step value with BY:
 *
 *   DO i = start TO end BY step
 *
 * For example, DO i = 0 TO 10 BY 2 gives: 0, 2, 4, 6, 8, 10.
 *
 * Your task: Count how many iterations occur when stepping
 * from 0 to 20 by 5, and collect the values.
 */

/* I AM NOT DONE */

count = 0
values = ''

/* Fix: loop from 0 to 20 stepping by 5 */
DO i = 0 TO 20 BY ???
  count = count + 1
  IF values = '' THEN values = i
  ELSE values = values i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count, '5', 'should have 5 iterations (0,5,10,15,20)'
CALL assert_equal values, '0 5 10 15 20', 'values should be 0 5 10 15 20'
CALL assert_true count = 5, 'count should be 5'
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
