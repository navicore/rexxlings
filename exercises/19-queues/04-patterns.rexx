/* Exercise: Queue Patterns — Reversing a Word List
 *
 * Because PUSH gives LIFO order, you can use it to reverse a list!
 *
 * Strategy:
 * 1. Take a sentence and split it into words
 * 2. PUSH each word onto the queue
 * 3. PULL them back — they come out in reverse order
 * 4. Build a new string from the pulled words
 *
 * Your task: Reverse the words in the sentence 'one two three four'
 * using the queue. The result should be 'FOUR THREE TWO ONE'.
 *
 * Remember: PULL uppercases, so the reversed words will be uppercase.
 *
 * Useful BIFs: WORDS(string), WORD(string, n)
 */

/* I AM NOT DONE */

sentence = 'one two three four'

/* Push each word onto the queue using a DO loop */
DO i = 1 TO WORDS(sentence)
  ???
END

/* Pull all words back and build the reversed string */
reversed = ''
DO WHILE QUEUED() > 0
  PULL w
  IF reversed = '' THEN
    reversed = w
  ELSE
    reversed = reversed w
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal reversed, 'FOUR THREE TWO ONE', 'Words should be reversed'
CALL assert_equal WORDS(reversed), 4, 'Should still have 4 words'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
