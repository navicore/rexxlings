/* Exercise: Practical Pattern — Word Frequency Counter
 *
 * Stems with defaults are perfect for counting things. Combined
 * with REXX's string functions, you can build a word frequency
 * counter:
 *
 *   count. = 0
 *   w = 'hello'
 *   count.w = count.w + 1
 *
 * Useful built-in functions:
 *   WORDS(string)    — number of blank-delimited words
 *   WORD(string, n)  — nth word from string
 *   TRANSLATE(string) — uppercases the string (for normalization)
 *
 * Your task: Count the frequency of each word in the given
 * sentence. Use a stem with a default of 0 for counting, and
 * keep a word list of unique words seen.
 */

/* I AM NOT DONE */

sentence = 'the cat sat on the mat the cat'

/* Initialize the count stem with default 0 */
count. = 0
unique = ''

/* Loop through each word and count occurrences */
/* Also build a unique word list (no duplicates) */
DO i = 1 TO WORDS(sentence)
  w = WORD(sentence, i)
  ???
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count.the, 3, 'the should appear 3 times'
CALL assert_equal count.cat, 2, 'cat should appear 2 times'
CALL assert_equal count.sat, 1, 'sat should appear 1 time'
CALL assert_equal count.on, 1, 'on should appear 1 time'
CALL assert_equal count.mat, 1, 'mat should appear 1 time'
CALL assert_equal WORDS(unique), 5, 'there should be 5 unique words'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
