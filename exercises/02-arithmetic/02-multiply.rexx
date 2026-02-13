/* Exercise: Multiplication and Division
 *
 * REXX uses * for multiplication and / for division.
 *
 *   answer = 6 * 7       result is '42'
 *   answer = 10 / 4      result is '2.5'
 *
 * Note: Division in REXX returns the exact answer, including
 * decimal places when needed (unlike integer division in some
 * other languages).
 *
 * Your task: Fill in the expressions to pass the tests.
 */

/* I AM NOT DONE */

/* Multiply 8 by 7 */
product = ???

/* Divide 100 by 4 */
quotient = ???

/* Calculate the area of a rectangle: width=12, height=5 */
width = 12
height = 5
area = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal product, '56', 'product should be 56'
CALL assert_equal quotient, '25', 'quotient should be 25'
CALL assert_equal area, '60', 'area should be 60'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
