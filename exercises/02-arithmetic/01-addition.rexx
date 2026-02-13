/* Exercise: Addition and Subtraction
 *
 * In REXX, everything is a string — but when you use arithmetic
 * operators, REXX automatically treats the strings as numbers.
 *
 *   answer = 3 + 4      result is '7'
 *   answer = 10 - 3     result is '7'
 *
 * You can also do arithmetic with variables:
 *   a = 10
 *   b = 3
 *   answer = a + b      result is '13'
 *
 * Your task: Fill in the correct expressions using + and -.
 */

/* I AM NOT DONE */

/* Calculate the sum of 25 and 17 */
sum = ???

/* Calculate the difference: 100 minus 37 */
difference = ???

/* Using variables: start at 50, add 15, then subtract 20 */
start = 50
answer = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum, '42', 'sum should be 42'
CALL assert_equal difference, '63', 'difference should be 63'
CALL assert_equal answer, '45', 'result should be 45'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
