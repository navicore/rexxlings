/* Exercise: DO i = start TO end UNTIL condition
 *
 * UNTIL is the opposite of WHILE:
 * - WHILE continues as long as the condition is TRUE
 * - UNTIL continues as long as the condition is FALSE
 *   (stops when it becomes TRUE)
 *
 * The UNTIL condition is checked AFTER each iteration:
 *
 *   DO i = 1 TO 100 UNTIL found = 1
 *     IF data.i = target THEN found = 1
 *   END
 *
 * Your task: Use UNTIL to find the first power of 2 that exceeds 100.
 */

/* I AM NOT DONE */

power = 1
count = 0

DO i = 1 TO 20 UNTIL ???
  power = power * 2
  count = i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal power, 128, 'First power of 2 exceeding 100 should be 128'
CALL assert_equal count, 7, 'Should take 7 doublings (2^7 = 128)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
