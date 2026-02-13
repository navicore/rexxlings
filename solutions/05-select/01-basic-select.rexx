/* Exercise: Basic SELECT — Mapping Values */

dayNum = 3
dayName = ''

SELECT
  WHEN dayNum = 1 THEN dayName = 'Monday'
  WHEN dayNum = 2 THEN dayName = 'Tuesday'
  WHEN dayNum = 3 THEN dayName = 'Wednesday'
  WHEN dayNum = 4 THEN dayName = 'Thursday'
  WHEN dayNum = 5 THEN dayName = 'Friday'
  WHEN dayNum = 6 THEN dayName = 'Saturday'
  WHEN dayNum = 7 THEN dayName = 'Sunday'
END

monthNum = 12
monthName = ''

SELECT
  WHEN monthNum = 1 THEN monthName = 'January'
  WHEN monthNum = 6 THEN monthName = 'June'
  WHEN monthNum = 12 THEN monthName = 'December'
END

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
