/* Exercise: SPACE — Normalize Whitespace */

messy = '  too   many    spaces   here  '

/* Normalize to single spaces */
single = SPACE(messy)

/* Normalize to zero spaces (concatenate all words) */
none = SPACE(messy, 0)

/* Normalize to exactly 2 spaces between words */
double = SPACE(messy, 2)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal single, 'too many spaces here', 'single spaces'
CALL assert_equal none, 'toomanyspaceshere', 'no spaces'
CALL assert_equal double, 'too  many  spaces  here', 'double spaces'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
