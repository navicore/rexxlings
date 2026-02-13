/* Exercise: INSERT — Add Text at a Position */

original = 'HelloWorld'

/* Insert a space between Hello and World (after position 5) */
spaced = INSERT(' ', original, 5)

/* Insert 'Beautiful ' after the space (after position 6) */
expanded = INSERT('Beautiful ', spaced, 6)

/* Insert '!' at the end (after position = LENGTH of expanded) */
excited = INSERT('!', expanded, LENGTH(expanded))

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal spaced, 'Hello World', 'space inserted'
CALL assert_equal expanded, 'Hello Beautiful World', 'word inserted'
CALL assert_equal excited, 'Hello Beautiful World!', 'exclamation added'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
