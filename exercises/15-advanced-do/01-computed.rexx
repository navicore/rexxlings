/* Exercise: DO with Computed Bounds
 *
 * The start, end, and step values of a DO loop can be variables
 * or expressions, not just literal numbers:
 *
 *   start = 2
 *   finish = 10
 *   step = 2
 *   DO i = start TO finish BY step
 *     /* i takes values 2, 4, 6, 8, 10 */
 *   END
 *
 * Your task: Use computed bounds to build the expected result string.
 */

/* I AM NOT DONE */

start  = ???
finish = ???
step   = ???

answer = ''
DO i = start TO finish BY step
  IF answer \= '' THEN answer = answer || ','
  answer = answer || i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, '5,10,15,20', 'Loop should produce 5,10,15,20'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
