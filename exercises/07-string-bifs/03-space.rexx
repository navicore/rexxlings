/* Exercise: SPACE — Normalize Whitespace
 *
 * SPACE(string, n) reformats a string so there are exactly n blanks
 * between each word. Leading and trailing blanks are removed.
 *
 * If n is omitted, it defaults to 1.
 *
 * Examples:
 *   SPACE('  hello   world  ')      =>  'hello world'
 *   SPACE('a  b  c', 3)             =>  'a   b   c'
 *   SPACE('a  b  c', 0)             =>  'abc'
 *
 * Your task: Use SPACE to produce the expected results.
 */

/* I AM NOT DONE */

messy = '  too   many    spaces   here  '

/* Normalize to single spaces */
single = messy    /* Fix this */

/* Normalize to zero spaces (concatenate all words) */
none = messy      /* Fix this */

/* Normalize to exactly 2 spaces between words */
double = messy    /* Fix this */

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
