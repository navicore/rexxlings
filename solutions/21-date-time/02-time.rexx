/* Exercise: TIME() — Getting the Current Time */

/* Get the current time in normal format */
current_time = TIME()

/* Get the length */
time_len = LENGTH(current_time)

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
