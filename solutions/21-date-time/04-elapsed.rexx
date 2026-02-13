/* Exercise: Time Calculations */

/* Get seconds since midnight */
seconds = TIME('S')

/* Get minutes since midnight */
minutes = TIME('M')

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
