/* Exercise: OTHERWISE — The Default Case */

grade = 'D'
description = ''

SELECT
  WHEN grade = 'A' THEN description = 'excellent'
  WHEN grade = 'B' THEN description = 'good'
  WHEN grade = 'C' THEN description = 'average'
  OTHERWISE description = 'unknown'
END

status = 500
category = ''

SELECT
  WHEN status = 200 THEN category = 'success'
  WHEN status = 404 THEN category = 'not found'
  OTHERWISE category = 'other'
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal description, 'unknown', 'grade D should be unknown'
CALL assert_equal category, 'other', 'status 500 should be other'
CALL assert_true description = 'unknown', 'description should be unknown'
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
