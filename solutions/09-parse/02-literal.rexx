/* Exercise: PARSE with Literal Patterns */

config = 'host=localhost'
PARSE VAR config cfg_key '=' cfg_value

url = 'https://example.com/path'
PARSE VAR url protocol '://' address

csv_line = 'Alice,30,Engineer'
/* Parse the CSV into three fields separated by commas */
PARSE VAR csv_line csv_name ',' csv_age ',' csv_job

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
