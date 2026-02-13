/* Exercise: Word Frequency Counter
 *
 * Count how many times each word appears in a sentence using
 * stem variables.
 *
 * Strategy:
 * 1. Loop through each word in the sentence
 * 2. Uppercase the word (for consistent stem keys)
 * 3. Increment a counter in a stem: count.WORD = count.WORD + 1
 *
 * Remember: uninitialized stem variables return their own name,
 * so you need to initialize count. to 0 first.
 *
 * Your task: Count word frequencies in the given sentence.
 */

/* I AM NOT DONE */

sentence = 'the cat and the dog and the fish'

/* Initialize the default stem value */
count. = 0

/* Count each word */
DO i = 1 TO WORDS(sentence)
  w = ???
  ???
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count.THE, 3, 'THE should appear 3 times'
CALL assert_equal count.AND, 2, 'AND should appear 2 times'
CALL assert_equal count.CAT, 1, 'CAT should appear 1 time'
CALL assert_equal count.DOG, 1, 'DOG should appear 1 time'
CALL assert_equal count.FISH, 1, 'FISH should appear 1 time'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
