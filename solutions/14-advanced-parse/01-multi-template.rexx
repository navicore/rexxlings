/* Exercise: Multiple Templates — Parsing Different Parts */

record = 'JOHN  DOE   NYC'

/* Parse: first 6 chars = first name, next 6 = last name, rest = city */
PARSE VAR record first_name +6 last_name +6 city

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
