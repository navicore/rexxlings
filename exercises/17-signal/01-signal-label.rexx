/* Exercise: SIGNAL label — Jump to a Label
 *
 * SIGNAL transfers control to a label, similar to a "goto":
 *
 *   SIGNAL skip_this
 *   SAY 'This is never printed'
 *   skip_this:
 *   SAY 'Jumped here!'
 *
 * Important: SIGNAL terminates any active DO, SELECT, or IF
 * constructs. It is a non-structured jump.
 *
 * Your task: Use SIGNAL to jump over the "wrong" assignment
 * and land at the label where the correct value is set.
 */

/* I AM NOT DONE */

answer = 'wrong'

/* Jump to the label 'correct' to skip the next line */
???

answer = 'still wrong'

correct:
  answer = 'right'

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 'right', 'SIGNAL should jump to correct label'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
