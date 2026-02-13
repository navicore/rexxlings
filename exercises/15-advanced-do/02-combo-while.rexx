/* Exercise: DO i = start TO end WHILE condition
 *
 * You can combine a counted loop with a WHILE condition.
 * The loop runs as long as BOTH the count has not exceeded
 * the limit AND the WHILE condition is true:
 *
 *   DO i = 1 TO 100 WHILE total < 50
 *     total = total + i
 *   END
 *
 * The WHILE condition is checked BEFORE each iteration.
 * If the condition is false, the loop stops immediately.
 *
 * Your task: Complete the loop to sum numbers 1,2,3,...
 * but stop as soon as the sum reaches or exceeds 15.
 */

/* I AM NOT DONE */

total = 0
last_i = 0

DO i = 1 TO 100 WHILE ???
  total = total + i
  last_i = i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal total, 15, 'Sum should be 15 (1+2+3+4+5)'
CALL assert_equal last_i, 5, 'Loop should stop at i=5'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
