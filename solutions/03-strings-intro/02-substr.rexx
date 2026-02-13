/* Exercise: SUBSTR() — Extracting Substrings */

text = 'REXX Programming'

/* Extract 'REXX' (first 4 characters) */
part1 = SUBSTR(text, 1, 4)

/* Extract 'Programming' (from position 6 to the end) */
part2 = SUBSTR(text, 6)

/* Extract 'Pro' (3 characters starting at position 6) */
part3 = SUBSTR(text, 6, 3)

/* Extract the last character of text. */
last_char = SUBSTR(text, LENGTH(text), 1)

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
