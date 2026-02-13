/* Exercise: Common Loop Patterns */

/* Pattern 1: Accumulator - compute the product of 1 * 2 * 3 * 4 * 5 */
product = 1
DO i = 1 TO 5
  product = product * i
END

/* Pattern 2: Search - find first multiple of 7 greater than 50 */
found = 0
DO i = 51 TO 100
  IF i // 7 = 0 THEN DO
    found = i
    LEAVE
  END
END

/* Pattern 3: Count - how many numbers from 1-20 are even? */
even_count = 0
DO i = 1 TO 20
  IF i // 2 = 0 THEN even_count = even_count + 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal product, 120, 'Product of 1-5 should be 120'
CALL assert_equal found, 56, 'First multiple of 7 above 50 should be 56'
CALL assert_equal even_count, 10, 'There should be 10 even numbers in 1-20'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
