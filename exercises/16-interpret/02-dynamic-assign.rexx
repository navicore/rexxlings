/* Exercise: Dynamic Variable Assignment with INTERPRET
 *
 * INTERPRET can create or assign variables whose names are determined
 * at runtime. This is useful when variable names come from data:
 *
 *   varname = 'color'
 *   INTERPRET varname '= "blue"'
 *   SAY color    -- prints: blue
 *
 * The string concatenation builds: color = "blue"
 * which INTERPRET then executes.
 *
 * Your task: Use INTERPRET to dynamically assign values to variables
 * whose names are stored in other variables.
 */

/* I AM NOT DONE */

/* Assign the value 42 to a variable named 'answer' using INTERPRET */
varname1 = 'answer'
???

/* Assign 'REXX' to a variable named 'language' using INTERPRET */
varname2 = 'language'
???

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
