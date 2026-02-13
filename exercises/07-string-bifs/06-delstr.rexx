/* Exercise: DELSTR — Delete a Substring
 *
 * DELSTR(string, start, length) removes 'length' characters from
 * 'string' beginning at position 'start'.
 *
 * If 'length' is omitted, everything from 'start' to the end is
 * removed.
 *
 * Examples:
 *   DELSTR('abcdef', 3, 2)  =>  'abef'    (removes 'cd')
 *   DELSTR('abcdef', 4)     =>  'abc'     (removes 'def')
 *
 * Your task: Use DELSTR to produce the expected results.
 */

/* I AM NOT DONE */

text = 'Hello Cruel World'

/* Remove ' Cruel' (positions 6 through 11, length 6) */
kind = text       /* Fix this */

/* Remove everything after position 5 */
just_hello = text /* Fix this */

/* Remove the first character */
no_h = text       /* Fix this */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal kind, 'Hello World', 'cruel removed'
CALL assert_equal just_hello, 'Hello', 'only hello remains'
CALL assert_equal no_h, 'ello Cruel World', 'first character removed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
