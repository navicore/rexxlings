/* Exercise: OTHERWISE — The Default Case
 *
 * When none of the WHEN conditions match, REXX raises an error
 * unless you provide an OTHERWISE clause:
 *
 *   SELECT
 *     WHEN condition1 THEN instruction
 *     WHEN condition2 THEN instruction
 *     OTHERWISE instruction
 *   END
 *
 * OTHERWISE acts as a catch-all default, like "default:" in C.
 * Use NOP after OTHERWISE if you truly want to do nothing.
 *
 * Your task: Add OTHERWISE clauses to handle unexpected values.
 */

/* I AM NOT DONE */

/* Map a letter grade to a description */
grade = 'D'
description = ''

SELECT
  WHEN grade = 'A' THEN description = 'excellent'
  WHEN grade = 'B' THEN description = 'good'
  WHEN grade = 'C' THEN description = 'average'
  /* Fix: add OTHERWISE to set description to 'unknown' */
END

/* Map a HTTP status code to a category */
status = 500
category = ''

SELECT
  WHEN status = 200 THEN category = 'success'
  WHEN status = 404 THEN category = 'not found'
  /* Fix: add OTHERWISE to set category to 'other' */
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
