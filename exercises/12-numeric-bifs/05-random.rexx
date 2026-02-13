/* Exercise: RANDOM() — Generating Random Numbers
 *
 * RANDOM(min, max) returns a random whole number between min and max
 * (inclusive).
 *
 *   RANDOM(1, 10)   =>  a number from 1 to 10
 *   RANDOM(0, 100)  =>  a number from 0 to 100
 *
 * Since the result is random, we cannot test for exact values.
 * Instead, we verify the result falls within the expected range.
 *
 * Your task: Use RANDOM() to generate numbers in the specified ranges
 * and set the comparison flags so the tests pass.
 */

/* I AM NOT DONE */

r1 = ???

/* Check that r1 is between 1 and 10 */
r1_in_range = ???

r2 = ???

/* Check that r2 is between 50 and 60 */
r2_in_range = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal r1_in_range, 1, 'RANDOM(1,10) should be in range 1-10'
CALL assert_equal r2_in_range, 1, 'RANDOM(50,60) should be in range 50-60'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
