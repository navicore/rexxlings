/* Exercise: DATE() — Getting the Current Date */

/* Get the date in sorted (YYYYMMDD) format */
sorted_date = DATE('S')

/* Get the length of the sorted date */
date_len = LENGTH(sorted_date)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal date_len, 8, 'Sorted date should be 8 characters long'
CALL assert_equal DATATYPE(sorted_date, 'W'), 1, 'Sorted date should be a whole number'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
