/* Exercise: Multiple Templates — Parsing Different Parts
 *
 * PARSE can use positional patterns to extract specific columns
 * from a string. A number in the template means "go to this column":
 *
 *   PARSE VAR line 1 first 4 middle 7 last
 *   -- first gets columns 1-3, middle gets 4-6, last gets 7+
 *
 * You can also use relative positions with + or -:
 *   PARSE VAR line first +3 middle +3 last
 *   -- first gets 3 chars, middle gets next 3, last gets the rest
 *
 * Your task: Use positional PARSE to extract parts of a fixed-width
 * record string.
 */

/* I AM NOT DONE */

record = 'JOHN  DOE   NYC'

/* Parse: first 6 chars = first name, next 6 = last name, rest = city */
PARSE VAR record ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal STRIP(first_name), 'JOHN', 'First name should be JOHN'
CALL assert_equal STRIP(last_name), 'DOE', 'Last name should be DOE'
CALL assert_equal STRIP(city), 'NYC', 'City should be NYC'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
