/* Exercise: Practical Pattern — Word Frequency Counter */

sentence = 'the cat sat on the mat the cat'

count. = 0
unique = ''

DO i = 1 TO WORDS(sentence)
  w = WORD(sentence, i)
  IF count.w = 0 THEN unique = unique w
  count.w = count.w + 1
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
