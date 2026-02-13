/* Exercise: Combined Word BIFs — Capitalize the First Word
 *
 * Combine several word and string BIFs to transform text.
 *
 * Your task: Given a sentence in all lowercase, capitalize only the
 * first word (make it uppercase) and leave the rest unchanged.
 *
 * Strategy:
 *   1. Extract the first word with WORD
 *   2. Uppercase it with TRANSLATE
 *   3. Get the remaining words with SUBWORD
 *   4. Combine them back together
 *
 * Also: reverse the word order of a short phrase.
 */

/* I AM NOT DONE */

sentence = 'hello world from rexx'

/* Step 1: Extract the first word */
first = ''            /* Fix this */

/* Step 2: Uppercase the first word */
upper_first = ''      /* Fix this */

/* Step 3: Get the remaining words (word 2 onward) */
rest = ''             /* Fix this */

/* Step 4: Combine them */
capitalized = ''      /* Fix this — should be 'HELLO world from rexx' */

/* Bonus: Reverse the word order of a 3-word phrase */
forward = 'one two three'
reversed = ''         /* Fix: build 'three two one' using WORD */

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
