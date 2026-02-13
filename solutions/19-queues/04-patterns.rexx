/* Exercise: Queue Patterns — Reversing a Word List */

sentence = 'one two three four'

/* Push each word onto the queue using a DO loop */
DO i = 1 TO WORDS(sentence)
  PUSH WORD(sentence, i)
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
