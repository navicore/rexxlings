/* Exercise: DO FOREVER — Infinite Loop with LEAVE
 *
 * DO FOREVER creates a loop that runs indefinitely. You MUST
 * use LEAVE to exit it, or the program will never stop:
 *
 *   DO FOREVER
 *     IF condition THEN LEAVE
 *     instructions
 *   END
 *
 * LEAVE immediately exits the innermost DO loop.
 *
 * Your task: Use DO FOREVER to find the first power of 2 that
 * exceeds 1000.
 */

/* I AM NOT DONE */

value = 1
count = 0

DO FOREVER
  IF value > 1000 THEN ???
  value = value * 2
  count = count + 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal value, '1024', 'first power of 2 over 1000 should be 1024'
CALL assert_equal count, '10', 'should take 10 doublings to reach 1024'
CALL assert_true value > 1000, 'value should exceed 1000'
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
