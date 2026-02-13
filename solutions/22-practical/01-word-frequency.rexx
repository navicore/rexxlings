/* Exercise: Word Frequency Counter */

sentence = 'the cat and the dog and the fish'

/* Initialize the default stem value */
count. = 0

/* Count each word */
DO i = 1 TO WORDS(sentence)
  w = TRANSLATE(WORD(sentence, i))
  count.w = count.w + 1
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
