/* Exercise: Multiplication and Division */

/* Multiply 8 by 7 */
product = 8 * 7

/* Divide 100 by 4 */
quotient = 100 / 4

/* Calculate the area of a rectangle: width=12, height=5 */
width = 12
height = 5
area = width * height

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
