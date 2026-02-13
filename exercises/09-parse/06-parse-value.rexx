/* Exercise: PARSE VALUE ... WITH — Parse an Expression
 *
 * PARSE VALUE parses the result of an expression (not a variable):
 *
 *   PARSE VALUE expression WITH template
 *
 * This is useful when you want to parse a function result, a
 * concatenation, or a literal string directly.
 *
 * Examples:
 *   PARSE VALUE 'Hello World' WITH greeting rest
 *   PARSE VALUE DATE('S') WITH year +4 month +2 day
 *
 * Your task: Use PARSE VALUE ... WITH to extract values.
 */

/* I AM NOT DONE */

/* Parse a literal string directly */
PARSE VALUE greeting WITH first last           /* Fix: need the expression */

/* Parse a computed expression: concatenate two variables and parse */
part1 = 'REXX'
part2 = 'Language'
PARSE VALUE part1 WITH lang rest               /* Fix: parse the full expression */

/* Parse a function result: build a formatted string, then parse it */
raw_name = '  Alice  '
raw_age = '  30  '
PARSE VALUE raw_name WITH clean_name clean_age /* Fix: need the right expression */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first, 'Good', 'first word from literal'
CALL assert_equal last, 'Morning', 'second word from literal'
CALL assert_equal lang, 'REXX', 'language name parsed'
CALL assert_equal rest, 'Language', 'rest parsed'
CALL assert_equal clean_name, 'Alice', 'clean name parsed'
CALL assert_equal clean_age, '30', 'clean age parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
