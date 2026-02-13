/* Exercise: PARSE VALUE ... WITH — Parse an Expression */

/* Parse a literal string directly */
PARSE VALUE 'Good Morning' WITH first last

/* Parse a computed expression: concatenate two variables and parse */
part1 = 'REXX'
part2 = 'Language'
PARSE VALUE part1 part2 WITH lang rest

/* Parse a function result: build a formatted string, then parse it */
raw_name = '  Alice  '
raw_age = '  30  '
PARSE VALUE STRIP(raw_name) STRIP(raw_age) WITH clean_name clean_age

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
