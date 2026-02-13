/* Exercise: OVERLAY — Replace Characters at a Position */

template = '____-__-__'

/* Overlay a year at position 1 */
with_year = OVERLAY('2025', template, 1)

/* Now overlay a month at position 6 */
with_month = OVERLAY('12', with_year, 6)

/* Now overlay a day at position 9 */
full_date = OVERLAY('25', with_month, 9)

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
