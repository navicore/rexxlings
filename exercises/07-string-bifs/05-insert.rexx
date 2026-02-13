/* Exercise: INSERT — Add Text at a Position
 *
 * INSERT(new, target, position) inserts the string 'new' into
 * 'target' after the character at 'position'. The existing
 * characters are pushed to the right.
 *
 * If position is 0, 'new' is inserted at the very beginning.
 *
 * Examples:
 *   INSERT('XY', 'abcdef', 3)  =>  'abcXYdef'
 *   INSERT('Hi ', 'World', 0)  =>  'Hi World'
 *
 * Your task: Use INSERT to produce the expected results.
 */

/* I AM NOT DONE */

original = 'HelloWorld'

/* Insert a space between Hello and World (after position 5) */
spaced = original    /* Fix this */

/* Insert 'Beautiful ' after the space (after position 6) */
expanded = spaced    /* Fix this */

/* Insert '!' at the end (after position = LENGTH of expanded) */
excited = expanded   /* Fix this */

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
