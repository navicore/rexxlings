/* Exercise: Word Iteration — Loop Over Words with DO
 *
 * REXX has no built-in "for each word" loop, but you can iterate
 * over words using WORDS to get the count and WORD to extract each:
 *
 *   DO i = 1 TO WORDS(text)
 *     w = WORD(text, i)
 *     ... do something with w ...
 *   END
 *
 * Your task: Complete the loop to build a string of word lengths.
 * For the phrase 'I am learning REXX now', the word lengths are
 * 1, 2, 8, 4, 3 — build the string '1 2 8 4 3'.
 */

/* I AM NOT DONE */

phrase = 'I am learning REXX now'
lengths = ''

DO i = 1 TO WORDS(phrase)
  w = WORD(phrase, i)
  /* Fix: append LENGTH(w) to lengths, separated by spaces */
  /* Hint: use lengths = STRIP(lengths w_len) or similar   */
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal STRIP(lengths), '1 2 8 4 3', 'word lengths collected'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
