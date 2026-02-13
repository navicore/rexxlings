/* Exercise: Time Calculations
 *
 * TIME('S') returns the number of seconds since midnight as a whole
 * number. You can use this for simple timing calculations.
 *
 * TIME('M') returns minutes since midnight.
 * TIME('H') returns the hour (0-23).
 *
 * Your task:
 * 1. Get seconds since midnight with TIME('S')
 * 2. Get minutes since midnight with TIME('M')
 * 3. Verify the relationship: seconds >= minutes * 60
 */

/* I AM NOT DONE */

/* Get seconds since midnight */
seconds = ???

/* Get minutes since midnight */
minutes = ???

/* Seconds should always be >= minutes * 60 */
valid = (seconds >= minutes * 60)

/* Seconds should be a whole number */
is_whole = DATATYPE(seconds, 'W')

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal is_whole, 1, 'TIME(S) should return a whole number'
CALL assert_equal valid, 1, 'Seconds should be >= minutes * 60'
CALL assert_true seconds >= 0, 'Seconds should be non-negative'
CALL assert_true seconds < 86400, 'Seconds should be less than 86400'
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
