/* Exercise: WORDPOS — Find a Word's Position
 *
 * WORDPOS(phrase, string) returns the word number where 'phrase' is
 * found in 'string', or 0 if not found.
 *
 * The phrase can be multiple words — they must appear consecutively.
 *
 * Examples:
 *   WORDPOS('brown', 'The quick brown fox')       =>  3
 *   WORDPOS('quick brown', 'The quick brown fox')  =>  2
 *   WORDPOS('red', 'The quick brown fox')          =>  0
 *
 * Your task: Use WORDPOS to produce the expected results.
 */

/* I AM NOT DONE */

colors = 'red green blue yellow orange purple'

/* Find the position of 'blue' */
blue_pos = 0          /* Fix this */

/* Find the position of 'yellow orange' */
pair_pos = 0          /* Fix this */

/* Search for a word that is not present */
missing_pos = 1       /* Fix this — search for 'pink' */

/* Find the position of 'red' */
red_pos = 0           /* Fix this */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal blue_pos, 3, 'blue is at word 3'
CALL assert_equal pair_pos, 4, 'yellow orange starts at word 4'
CALL assert_equal missing_pos, 0, 'pink is not found'
CALL assert_equal red_pos, 1, 'red is at word 1'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
