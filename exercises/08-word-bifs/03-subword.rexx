/* Exercise: SUBWORD — Extract a Range of Words
 *
 * SUBWORD(string, n, count) returns 'count' words starting from the
 * nth word. If 'count' is omitted, all remaining words are returned.
 *
 * Examples:
 *   SUBWORD('one two three four', 2, 2)  =>  'two three'
 *   SUBWORD('one two three four', 3)     =>  'three four'
 *
 * Your task: Use SUBWORD to produce the expected results.
 */

/* I AM NOT DONE */

sentence = 'The quick brown fox jumps over the lazy dog'

/* Get words 2 through 4 (3 words starting at word 2) */
middle = ''          /* Fix this */

/* Get everything from word 5 onward */
tail = ''            /* Fix this */

/* Get the first 3 words */
head = ''            /* Fix this */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal middle, 'quick brown fox', 'words 2-4'
CALL assert_equal tail, 'jumps over the lazy dog', 'words 5 onward'
CALL assert_equal head, 'The quick brown', 'first 3 words'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
