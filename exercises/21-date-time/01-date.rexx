/* Exercise: DATE() — Getting the Current Date
 *
 * The DATE() built-in function returns the current date in various
 * formats depending on the argument:
 *
 *   DATE()    — normal format, e.g. '11 Feb 2026'
 *   DATE('S') — sorted format: 'YYYYMMDD', e.g. '20260211'
 *   DATE('N') — same as DATE() (normal)
 *
 * DATE('S') is especially useful because the 8-character sorted
 * format can be compared and sorted easily.
 *
 * Your task: Get the date in sorted format and verify it is
 * exactly 8 characters long.
 */

/* I AM NOT DONE */

/* Get the date in sorted (YYYYMMDD) format */
sorted_date = ???

/* Get the length of the sorted date */
date_len = ???

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
