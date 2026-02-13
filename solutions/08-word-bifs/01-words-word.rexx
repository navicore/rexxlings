/* Exercise: WORDS and WORD — Count and Extract Words */

phrase = 'REXX is a powerful scripting language'

/* How many words are in the phrase? */
count = WORDS(phrase)

/* Get the first word */
first = WORD(phrase, 1)

/* Get the fourth word */
fourth = WORD(phrase, 4)

/* Get the last word (use WORDS to find its position) */
last = WORD(phrase, WORDS(phrase))

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count, 6, 'word count'
CALL assert_equal first, 'REXX', 'first word'
CALL assert_equal fourth, 'powerful', 'fourth word'
CALL assert_equal last, 'language', 'last word'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
