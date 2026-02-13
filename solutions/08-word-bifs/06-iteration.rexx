/* Exercise: Word Iteration — Loop Over Words with DO */

phrase = 'I am learning REXX now'
lengths = ''

DO i = 1 TO WORDS(phrase)
  w = WORD(phrase, i)
  lengths = lengths LENGTH(w)
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
