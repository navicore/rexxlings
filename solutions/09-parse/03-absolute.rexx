/* Exercise: PARSE with Absolute Positional Patterns */

/* A fixed-width date: YYYYMMDD */
datestamp = '20251225'

/* Parse into year (1-4), month (5-6), day (7-8) */
PARSE VAR datestamp 1 year 5 month 7 day

/* A fixed-width record: name(10) dept(5) id(4) */
record = 'Alice     SalesA001'

/* Parse into name (cols 1-10), dept (cols 11-15), id (cols 16-19) */
PARSE VAR record 1 rec_name 11 rec_dept 16 rec_id

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal year, '2025', 'year parsed'
CALL assert_equal month, '12', 'month parsed'
CALL assert_equal day, '25', 'day parsed'
CALL assert_equal STRIP(rec_name), 'Alice', 'name parsed'
CALL assert_equal STRIP(rec_dept), 'Sales', 'department parsed'
CALL assert_equal STRIP(rec_id), 'A001', 'id parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
