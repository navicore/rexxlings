/* Exercise: PARSE with Dot Placeholder — Skip Tokens */

log_line = 'ERROR 2025-01-15 Connection refused by host'

/* Extract only the date (word 2) — skip the severity, keep the date,
   skip the rest */
PARSE VAR log_line . date .

/* Extract only the message (words 3+) — skip severity and date */
PARSE VAR log_line . . message

/* From 'status:200:OK', extract only the status code (middle field) */
http_response = 'status:200:OK'
PARSE VAR http_response . ':' code ':' .

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal date, '2025-01-15', 'date extracted'
CALL assert_equal message, 'Connection refused by host', 'message extracted'
CALL assert_equal STRIP(code), '200', 'status code extracted'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
