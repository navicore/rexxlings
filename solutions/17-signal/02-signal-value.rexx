/* Exercise: SIGNAL VALUE — Computed Jump */

answer = 'wrong'

/* Set target to the right label name so SIGNAL VALUE jumps there */
target = 'label_green'
SIGNAL VALUE target

label_red:
  answer = 'red'
  SIGNAL done

label_green:
  answer = 'green'
  SIGNAL done

label_blue:
  answer = 'blue'
  SIGNAL done

done:

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 'green', 'Should jump to label_green'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
