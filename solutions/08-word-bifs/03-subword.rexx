/* Exercise: SUBWORD — Extract a Range of Words */

sentence = 'The quick brown fox jumps over the lazy dog'

/* Get words 2 through 4 (3 words starting at word 2) */
middle = SUBWORD(sentence, 2, 3)

/* Get everything from word 5 onward */
tail = SUBWORD(sentence, 5)

/* Get the first 3 words */
head = SUBWORD(sentence, 1, 3)

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
