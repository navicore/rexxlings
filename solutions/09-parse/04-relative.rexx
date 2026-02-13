/* Exercise: PARSE with Relative Positional Patterns (+n) */

/* A product code: 3-char category, 4-digit number, 2-char region */
code = 'TOY1234US'

/* Parse using relative positions */
PARSE VAR code category +3 number +4 region

/* A timestamp: HH (2) : MM (2) : SS (2) */
timestamp = '14:30:59'

PARSE VAR timestamp hours ':' minutes ':' seconds

/* A fixed-width log: severity(1) + space(1) + code(4) + space(1) + message */
log_entry = 'E 5012 Disk full'

PARSE VAR log_entry severity +1 +1 err_code +4 +1 message

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal category, 'TOY', 'category parsed'
CALL assert_equal number, '1234', 'number parsed'
CALL assert_equal region, 'US', 'region parsed'
CALL assert_equal hours, '14', 'hours parsed'
CALL assert_equal minutes, '30', 'minutes parsed'
CALL assert_equal seconds, '59', 'seconds parsed'
CALL assert_equal severity, 'E', 'severity parsed'
CALL assert_equal err_code, '5012', 'error code parsed'
CALL assert_equal message, 'Disk full', 'message parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
