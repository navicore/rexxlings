/* Exercise: PARSE with Literal Patterns
 *
 * PARSE VAR can split on literal strings, not just whitespace:
 *
 *   PARSE VAR source left '=' right
 *
 * This splits 'source' at the first '=' sign.
 * 'left' gets everything before '=', 'right' gets everything after.
 *
 * Examples:
 *   data = 'name=Alice'
 *   PARSE VAR data key '=' value
 *   /* key = 'name', value = 'Alice' */
 *
 * Your task: Use PARSE VAR with literal patterns to extract values.
 */

/* I AM NOT DONE */

config = 'host=localhost'
PARSE VAR config cfg_key '?' cfg_value    /* Fix: wrong delimiter */

url = 'https://example.com/path'
PARSE VAR url protocol '://' address      /* Is this correct? Check it */

csv_line = 'Alice,30,Engineer'
/* Parse the CSV into three fields separated by commas */
PARSE VAR csv_line csv_name csv_age csv_job   /* Fix: need literal patterns */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal cfg_key, 'host', 'config key parsed'
CALL assert_equal cfg_value, 'localhost', 'config value parsed'
CALL assert_equal protocol, 'https', 'protocol parsed'
CALL assert_equal address, 'example.com/path', 'address parsed'
CALL assert_equal csv_name, 'Alice', 'CSV name parsed'
CALL assert_equal csv_age, '30', 'CSV age parsed'
CALL assert_equal csv_job, 'Engineer', 'CSV job parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
