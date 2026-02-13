/* Exercise: WORDINDEX and WORDLENGTH — Word Positions and Lengths
 *
 * WORDINDEX(string, n) returns the character position where the nth
 * word begins.
 *
 * WORDLENGTH(string, n) returns the length of the nth word.
 *
 * Examples:
 *   WORDINDEX('one two three', 2)    =>  5
 *   WORDLENGTH('one two three', 2)   =>  3
 *
 * Your task: Use WORDINDEX and WORDLENGTH to produce the expected results.
 */

/* I AM NOT DONE */

data = 'Alice Bob Charlotte'

/* Where does the second word start? */
bob_pos = 0         /* Fix this */

/* How long is the third word? */
third_len = 0       /* Fix this */

/* Where does the first word start? */
first_pos = 0       /* Fix this */

/* How long is the second word? */
bob_len = 0         /* Fix this */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal bob_pos, 7, 'Bob starts at position 7'
CALL assert_equal third_len, 9, 'Charlotte has 9 characters'
CALL assert_equal first_pos, 1, 'Alice starts at position 1'
CALL assert_equal bob_len, 3, 'Bob has 3 characters'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
