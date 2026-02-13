/* Exercise: Multi-Dimensional Stems — Matrices
 *
 * Stem tails can include multiple dot-separated parts, which lets
 * you create multi-dimensional structures:
 *
 *   matrix.1.1 = 10
 *   matrix.1.2 = 20
 *   matrix.2.1 = 30
 *   matrix.2.2 = 40
 *
 * The tail is resolved by concatenating the values of each variable
 * with dots. So `matrix.r.c` where r=1 and c=2 becomes `matrix.1.2`.
 *
 * Your task: Create a 3x3 identity matrix using nested DO loops.
 * An identity matrix has 1 on the diagonal and 0 elsewhere:
 *
 *   1 0 0
 *   0 1 0
 *   0 0 1
 */

/* I AM NOT DONE */

/* Set default to 0 */
m. = 0
size = 3

/* Use nested loops to set the diagonal to 1 */
???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal m.1.1, 1, 'm.1.1 should be 1'
CALL assert_equal m.1.2, 0, 'm.1.2 should be 0'
CALL assert_equal m.1.3, 0, 'm.1.3 should be 0'
CALL assert_equal m.2.1, 0, 'm.2.1 should be 0'
CALL assert_equal m.2.2, 1, 'm.2.2 should be 1'
CALL assert_equal m.2.3, 0, 'm.2.3 should be 0'
CALL assert_equal m.3.1, 0, 'm.3.1 should be 0'
CALL assert_equal m.3.2, 0, 'm.3.2 should be 0'
CALL assert_equal m.3.3, 1, 'm.3.3 should be 1'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
