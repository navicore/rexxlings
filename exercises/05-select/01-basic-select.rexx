/* Exercise: Basic SELECT — Mapping Values
 *
 * SELECT is REXX's multi-way branch (like switch/case in other
 * languages):
 *
 *   SELECT
 *     WHEN condition1 THEN instruction
 *     WHEN condition2 THEN instruction
 *     ...
 *   END
 *
 * The first WHEN whose condition is true gets executed; the rest
 * are skipped.
 *
 * Your task: Map a day number (1-7) to its name using SELECT.
 */

/* I AM NOT DONE */

dayNum = 3
dayName = ''

SELECT
  WHEN dayNum = 1 THEN dayName = 'Monday'
  WHEN dayNum = 2 THEN dayName = 'Tuesday'
  WHEN dayNum = 3 THEN dayName = ???
  WHEN dayNum = 4 THEN dayName = ???
  WHEN dayNum = 5 THEN dayName = 'Friday'
  WHEN dayNum = 6 THEN dayName = 'Saturday'
  WHEN dayNum = 7 THEN dayName = 'Sunday'
END

monthNum = 12
monthName = ''

/* Fix: write a SELECT to map monthNum to a month name.
 * Only months 1, 6, and 12 need to be handled. */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal dayName, 'Wednesday', 'day 3 should be Wednesday'
CALL assert_equal monthName, 'December', 'month 12 should be December'
CALL assert_true dayName = 'Wednesday', 'dayName should be Wednesday'
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
