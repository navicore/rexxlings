/* Exercise: DATE Formats — Weekday and More
 *
 * DATE() accepts various option letters:
 *
 *   DATE('N') — normal:  '11 Feb 2026'
 *   DATE('S') — sorted:  '20260211'
 *   DATE('D') — days:    '42'  (day number in the year)
 *   DATE('W') — weekday: 'Wednesday'
 *   DATE('M') — month:   'February'
 *
 * Your task:
 * 1. Get the weekday name using DATE('W')
 * 2. Get the month name using DATE('M')
 * 3. Verify both are non-empty strings
 */

/* I AM NOT DONE */

/* Get the weekday name */
weekday = ???

/* Get the month name */
month = ???

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
