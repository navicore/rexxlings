/* Exercise: Variable Patterns — Dynamic Parse Delimiters
 *
 * In PARSE, you can use a variable enclosed in parentheses as a
 * pattern delimiter. The variable's value is used as the search string:
 *
 *   delim = ':'
 *   PARSE VAR data part1 (delim) part2
 *   -- splits data at the first ':'
 *
 * This is powerful because the delimiter can be computed at runtime.
 *
 * Your task: Use variable patterns to parse the strings below.
 */

/* I AM NOT DONE */

/* Parse a key=value pair using '=' as delimiter */
pair = 'color=blue'
delim = '='
???

/* Parse a date using '/' as delimiter */
date_str = '2025/06/15'
sep = '/'
???

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
