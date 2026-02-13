/* Exercise: Exponentiation (Power)
 *
 * REXX uses ** for exponentiation (raising to a power).
 *
 *   answer = 2 ** 3      result is '8'   (2 * 2 * 2)
 *   answer = 5 ** 2      result is '25'  (5 * 5)
 *   answer = 10 ** 0     result is '1'   (anything to the 0 is 1)
 *
 * Your task: Use ** to calculate powers.
 */

/* I AM NOT DONE */

/* Calculate 3 to the power of 4 (3*3*3*3) */
cube_plus = ???

/* Calculate 2 to the power of 10 */
kilo = ???

/* Calculate 10 to the power of 3 */
thousand = ???

/* Any number to the power of 1 is itself */
same = 42 ** ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal cube_plus, '81', 'cube_plus should be 81'
CALL assert_equal kilo, '1024', 'kilo should be 1024'
CALL assert_equal thousand, '1000', 'thousand should be 1000'
CALL assert_equal same, '42', 'same should be 42'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
