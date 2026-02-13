/* Exercise: SUBSTR() — Extracting Substrings
 *
 * SUBSTR(string, start, length) extracts a portion of a string.
 *
 *   - start:  position of first character to extract (1-based)
 *   - length: how many characters to extract (optional; if
 *             omitted, takes everything from start to end)
 *
 * Examples:
 *   SUBSTR('Hello World', 1, 5)   -->  'Hello'
 *   SUBSTR('Hello World', 7)      -->  'World'
 *   SUBSTR('Hello World', 7, 3)   -->  'Wor'
 *
 * Your task: Use SUBSTR() to extract the correct parts.
 */

/* I AM NOT DONE */

text = 'REXX Programming'

/* Extract 'REXX' (first 4 characters) */
part1 = ???

/* Extract 'Programming' (from position 6 to the end) */
part2 = ???

/* Extract 'Pro' (3 characters starting at position 6) */
part3 = ???

/* Extract the last character of text.
 * Hint: you can use LENGTH() to find the position. */
last_char = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal part1, 'REXX', 'part1 should be REXX'
CALL assert_equal part2, 'Programming', 'part2 should be Programming'
CALL assert_equal part3, 'Pro', 'part3 should be Pro'
CALL assert_equal last_char, 'g', 'last_char should be g'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
