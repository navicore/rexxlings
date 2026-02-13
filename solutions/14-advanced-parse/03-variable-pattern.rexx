/* Exercise: Variable Patterns — Dynamic Parse Delimiters */

/* Parse a key=value pair using '=' as delimiter */
pair = 'color=blue'
delim = '='
PARSE VAR pair key (delim) value

/* Parse a date using '/' as delimiter */
date_str = '2025/06/15'
sep = '/'
PARSE VAR date_str year (sep) month (sep) day

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal STRIP(key), 'color', 'Key should be color'
CALL assert_equal STRIP(value), 'blue', 'Value should be blue'
CALL assert_equal STRIP(year), '2025', 'Year should be 2025'
CALL assert_equal STRIP(month), '06', 'Month should be 06'
CALL assert_equal STRIP(day), '15', 'Day should be 15'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
