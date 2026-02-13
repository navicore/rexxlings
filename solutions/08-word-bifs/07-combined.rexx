/* Exercise: Combined Word BIFs — Capitalize the First Word */

sentence = 'hello world from rexx'

/* Step 1: Extract the first word */
first = WORD(sentence, 1)

/* Step 2: Uppercase the first word */
upper_first = TRANSLATE(first)

/* Step 3: Get the remaining words (word 2 onward) */
rest = SUBWORD(sentence, 2)

/* Step 4: Combine them */
capitalized = upper_first rest

/* Bonus: Reverse the word order of a 3-word phrase */
forward = 'one two three'
reversed = WORD(forward, 3) WORD(forward, 2) WORD(forward, 1)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal capitalized, 'HELLO world from rexx', 'first word capitalized'
CALL assert_equal reversed, 'three two one', 'words reversed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
