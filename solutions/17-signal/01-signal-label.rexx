/* Exercise: SIGNAL label — Jump to a Label */

answer = 'wrong'

/* Jump to the label 'correct' to skip the next line */
SIGNAL correct

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
