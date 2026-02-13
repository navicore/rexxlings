/* Exercise: MAX() and MIN() with Multiple Arguments
 *
 * MAX(n1, n2, ...) returns the largest of the given numbers.
 * MIN(n1, n2, ...) returns the smallest of the given numbers.
 *
 * Both functions accept two or more arguments:
 *   MAX(3, 7, 2)  =>  7
 *   MIN(3, 7, 2)  =>  2
 *
 * They also work with negative numbers and decimals:
 *   MAX(-5, -2, -8)  =>  -2
 *   MIN(1.5, 2.3)    =>  1.5
 *
 * Your task: Use MAX() and MIN() to set the variables below
 * so that the tests pass.
 */

/* I AM NOT DONE */

biggest  = ???
smallest = ???
max_neg  = ???
min_mix  = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal biggest, 42, 'MAX(10, 42, 7, 33) should be 42'
CALL assert_equal smallest, 3, 'MIN(15, 3, 8, 22) should be 3'
CALL assert_equal max_neg, -1, 'MAX(-5, -1, -10) should be -1'
CALL assert_equal min_mix, -7, 'MIN(4, -7, 0, 12) should be -7'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
