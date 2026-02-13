/* Exercise: NUMERIC FORM — Scientific vs Engineering Notation
 *
 * NUMERIC FORM controls how exponential notation is displayed:
 *
 *   NUMERIC FORM SCIENTIFIC  (default)
 *   - One digit before the decimal: 1.23E+10
 *
 *   NUMERIC FORM ENGINEERING
 *   - Exponent is always a multiple of 3: 12.3E+9
 *
 * FORM() returns the current setting.
 *
 * Your task: Switch between SCIENTIFIC and ENGINEERING forms and
 * observe the difference.
 */

/* I AM NOT DONE */

/* Check default form */
default_form = ???

/* Force a large number to display in exponential notation */
NUMERIC DIGITS 5
big = 123456789

/* Get the scientific form (default) */
sci_answer = big + 0

/* Switch to engineering notation */
???
eng_answer = big + 0

/* Check current form */
current_form = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal default_form, 'SCIENTIFIC', 'Default FORM should be SCIENTIFIC'
CALL assert_equal sci_answer, '1.2346E+8', 'Scientific: 1.2346E+8'
CALL assert_equal eng_answer, '123.46E+6', 'Engineering: 123.46E+6'
CALL assert_equal current_form, 'ENGINEERING', 'Current FORM should be ENGINEERING'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
