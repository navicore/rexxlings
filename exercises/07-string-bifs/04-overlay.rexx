/* Exercise: OVERLAY — Replace Characters at a Position
 *
 * OVERLAY(new, target, position) replaces characters in 'target'
 * starting at 'position' with the characters from 'new'.
 *
 * Examples:
 *   OVERLAY('XX', 'abcdef', 3)   =>  'abXXef'
 *   OVERLAY('123', 'abcdef', 1)  =>  '123def'
 *
 * Positions are 1-based (the first character is position 1).
 *
 * Your task: Use OVERLAY to produce the expected results.
 */

/* I AM NOT DONE */

template = '____-__-__'

/* Overlay a year at position 1 */
with_year = template       /* Fix: overlay '2025' at position 1 */

/* Now overlay a month at position 6 */
with_month = with_year     /* Fix: overlay '12' at position 6 */

/* Now overlay a day at position 9 */
full_date = with_month     /* Fix: overlay '25' at position 9 */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal with_year, '2025-__-__', 'year overlaid'
CALL assert_equal with_month, '2025-12-__', 'month overlaid'
CALL assert_equal full_date, '2025-12-25', 'full date overlaid'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
