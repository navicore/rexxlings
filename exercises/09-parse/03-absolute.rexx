/* Exercise: PARSE with Absolute Positional Patterns
 *
 * Absolute positions in PARSE extract fixed-width fields:
 *
 *   PARSE VAR source 1 field1 5 field2 10 field3
 *
 * The numbers are column positions (1-based). Each variable gets
 * the characters from its position up to (but not including) the
 * next position.
 *
 * Example with a fixed-width record:
 *   record = 'JohnDoe   NYC'
 *   PARSE VAR record 1 first 5 last 11 city
 *   /* first='John', last='Doe   ', city='NYC' */
 *
 * Your task: Use absolute positional PARSE to extract fields.
 */

/* I AM NOT DONE */

/* A fixed-width date: YYYYMMDD */
datestamp = '20251225'

/* Parse into year (1-4), month (5-6), day (7-8) */
PARSE VAR datestamp year month day   /* Fix: need positional pattern */

/* A fixed-width record: name(10) dept(5) id(4) */
record = 'Alice     SalesA001'

/* Parse into name (cols 1-10), dept (cols 11-15), id (cols 16-19) */
PARSE VAR record rec_name rec_dept rec_id   /* Fix: need positional pattern */

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
