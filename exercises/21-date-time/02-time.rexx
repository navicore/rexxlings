/* Exercise: TIME() — Getting the Current Time
 *
 * The TIME() built-in function returns the current time:
 *
 *   TIME()    — normal format: 'HH:MM:SS', e.g. '14:30:45'
 *   TIME('N') — same as TIME() (normal)
 *   TIME('H') — hours since midnight, e.g. '14'
 *   TIME('M') — minutes since midnight, e.g. '870'
 *   TIME('S') — seconds since midnight, e.g. '52245'
 *
 * The normal format is always 8 characters: HH:MM:SS
 *
 * Your task: Get the time in normal format and verify it is
 * exactly 8 characters long and contains colons in the right places.
 */

/* I AM NOT DONE */

/* Get the current time in normal format */
current_time = ???

/* Get the length */
time_len = ???

/* Extract the colon separators using SUBSTR */
colon1 = SUBSTR(current_time, 3, 1)
colon2 = SUBSTR(current_time, 6, 1)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal time_len, 8, 'Time should be 8 characters (HH:MM:SS)'
CALL assert_equal colon1, ':', 'Position 3 should be a colon'
CALL assert_equal colon2, ':', 'Position 6 should be a colon'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
