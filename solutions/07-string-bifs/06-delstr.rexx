/* Exercise: DELSTR — Delete a Substring */

text = 'Hello Cruel World'

/* Remove ' Cruel' (positions 6 through 11, length 6) */
kind = DELSTR(text, 6, 6)

/* Remove everything after position 5 */
just_hello = DELSTR(text, 6)

/* Remove the first character */
no_h = DELSTR(text, 1, 1)

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
