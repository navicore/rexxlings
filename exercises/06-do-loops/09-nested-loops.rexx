/* Exercise: Nested DO Loops
 *
 * You can nest DO loops inside each other. The inner loop
 * completes all its iterations for each iteration of the
 * outer loop:
 *
 *   DO i = 1 TO 3
 *     DO j = 1 TO 3
 *       SAY i '*' j '=' i * j
 *     END
 *   END
 *
 * Your task: Use nested loops to build a small multiplication
 * table. Compute the product of i * j for i=1..3, j=1..4 and
 * count the total number of multiplications performed.
 */

/* I AM NOT DONE */

count = 0
lastProduct = 0
sumProducts = 0

/* Fix: write nested loops for i=1 TO 3, j=1 TO 4 */
DO i = 1 TO ???
  DO j = 1 TO ???
    product = i * j
    lastProduct = product
    sumProducts = sumProducts + product
    count = count + 1
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count, '12', 'should be 12 multiplications (3*4)'
CALL assert_equal lastProduct, '12', 'last product should be 3*4=12'
CALL assert_equal sumProducts, '60', 'sum of all products should be 60'
CALL assert_true count = 12, 'count should be 12'
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
