/* Exercise: RANDOM() — Generating Random Numbers */

r1 = RANDOM(1, 10)

/* Check that r1 is between 1 and 10 */
r1_in_range = (r1 >= 1) & (r1 <= 10)

r2 = RANDOM(50, 60)

/* Check that r2 is between 50 and 60 */
r2_in_range = (r2 >= 50) & (r2 <= 60)

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
