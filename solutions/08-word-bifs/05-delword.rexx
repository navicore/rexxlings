/* Exercise: DELWORD — Delete Words from a String */

sentence = 'I really truly love REXX programming very much'

/* Remove word 2 ('really') — 1 word starting at word 2 */
shorter = DELWORD(sentence, 2, 1)

/* Remove the last 2 words ('very much') from the original sentence */
trimmed = DELWORD(sentence, 7)

/* Remove words 2 and 3 ('really truly') from the original */
concise = DELWORD(sentence, 2, 2)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal shorter, 'I truly love REXX programming very much', 'really removed'
CALL assert_equal trimmed, 'I really truly love REXX programming', 'last 2 words removed'
CALL assert_equal concise, 'I love REXX programming very much', 'really truly removed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
