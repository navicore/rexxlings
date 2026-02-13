/* Exercise: DATE Formats — Weekday and More */

/* Get the weekday name */
weekday = DATE('W')

/* Get the month name */
month = DATE('M')

/* Check that they are non-empty */
weekday_len = LENGTH(weekday)
month_len = LENGTH(month)

/* ===== Tests — do not edit below this line ===== */
CALL assert_true weekday_len > 0, 'Weekday should not be empty'
CALL assert_true month_len > 0, 'Month should not be empty'
CALL assert_true weekday_len >= 6, 'Weekday should be at least 6 chars (Monday)'
CALL assert_true month_len >= 3, 'Month should be at least 3 chars (May)'
EXIT 0

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
