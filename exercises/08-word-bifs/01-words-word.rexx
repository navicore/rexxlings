/* Exercise: WORDS and WORD — Count and Extract Words
 *
 * WORDS(string) returns the number of blank-delimited words.
 * WORD(string, n) returns the nth word (1-based).
 *
 * Examples:
 *   WORDS('one two three')     =>  3
 *   WORD('one two three', 2)   =>  'two'
 *
 * Your task: Use WORDS and WORD to produce the expected results.
 */

/* I AM NOT DONE */

phrase = 'REXX is a powerful scripting language'

/* How many words are in the phrase? */
count = 0            /* Fix this */

/* Get the first word */
first = ''           /* Fix this */

/* Get the fourth word */
fourth = ''          /* Fix this */

/* Get the last word (use WORDS to find its position) */
last = ''            /* Fix this */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count, 6, 'word count'
CALL assert_equal first, 'REXX', 'first word'
CALL assert_equal fourth, 'powerful', 'fourth word'
CALL assert_equal last, 'language', 'last word'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
