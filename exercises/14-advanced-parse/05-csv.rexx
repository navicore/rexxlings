/* Exercise: Practical CSV Parsing
 *
 * PARSE with a literal string delimiter is perfect for CSV-like data.
 * Use a comma as the delimiter:
 *
 *   PARSE VAR line field1 ',' field2 ',' field3
 *
 * Combined with STRIP() to remove extra spaces, this gives you a
 * simple CSV parser.
 *
 * Your task: Parse the CSV records below and extract the fields.
 */

/* I AM NOT DONE */

csv1 = 'Alice,30,Engineer'
csv2 = 'Bob,25,Designer'

/* Parse csv1 into name1, age1, role1 */
???

/* Parse csv2 into name2, age2, role2 */
???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal STRIP(name1), 'Alice', 'First name should be Alice'
CALL assert_equal STRIP(age1), '30', 'First age should be 30'
CALL assert_equal STRIP(role1), 'Engineer', 'First role should be Engineer'
CALL assert_equal STRIP(name2), 'Bob', 'Second name should be Bob'
CALL assert_equal STRIP(age2), '25', 'Second age should be 25'
CALL assert_equal STRIP(role2), 'Designer', 'Second role should be Designer'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
