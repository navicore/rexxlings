/* Exercise: PARSE with Dot Placeholder — Skip Tokens
 *
 * A dot (.) in a PARSE template acts as a placeholder. It consumes
 * a word but does not assign it to any variable — it discards it.
 *
 *   PARSE VAR source . second .
 *
 * - The first dot skips word 1
 * - second gets word 2
 * - The last dot skips the rest
 *
 * This is useful when you only need certain fields from a string.
 *
 * Your task: Use the dot placeholder to extract only what you need.
 */

/* I AM NOT DONE */

log_line = 'ERROR 2025-01-15 Connection refused by host'

/* Extract only the date (word 2) — skip the severity, keep the date,
   skip the rest */
PARSE VAR log_line date .             /* Fix: date should be only the date */

/* Extract only the message (words 3+) — skip severity and date */
PARSE VAR log_line . . message        /* Is this correct? Check it */

/* From 'status:200:OK', extract only the status code (middle field) */
http_response = 'status:200:OK'
PARSE VAR http_response ':' code ':'  /* Fix: need dot or correct template */

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
