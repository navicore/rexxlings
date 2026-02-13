/* Exercise: SIGNAL VALUE — Computed Jump
 *
 * SIGNAL VALUE expr evaluates the expression and jumps to the
 * label whose name matches the result:
 *
 *   destination = 'option_b'
 *   SIGNAL VALUE destination
 *
 *   option_a:
 *     SAY 'Chose A'
 *     EXIT
 *   option_b:
 *     SAY 'Chose B'
 *     EXIT
 *
 * This is like a dynamic goto — the target is determined at runtime.
 *
 * Your task: Set the target variable so that SIGNAL VALUE jumps
 * to the correct label.
 */

/* I AM NOT DONE */

answer = 'wrong'

/* Set target to the right label name so SIGNAL VALUE jumps there */
target = ???
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
