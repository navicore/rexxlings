/* Exercise: Dynamic Variable Assignment with INTERPRET */

/* Assign the value 42 to a variable named 'answer' using INTERPRET */
varname1 = 'answer'
INTERPRET varname1 '= 42'

/* Assign 'REXX' to a variable named 'language' using INTERPRET */
varname2 = 'language'
INTERPRET varname2 "= 'REXX'"

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 42, 'answer should be 42'
CALL assert_equal language, 'REXX', 'language should be REXX'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
