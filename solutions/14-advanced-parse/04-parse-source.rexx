/* Exercise: PARSE SOURCE — Getting Interpreter Information */

/* Use PARSE SOURCE to get system info */
PARSE SOURCE sys invocation filename

/* Check that we got something non-empty */
has_source = (LENGTH(sys) > 0)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal has_source, 1, 'PARSE SOURCE should provide non-empty data'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
