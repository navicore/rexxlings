/* Exercise: PARSE UPPER — Auto-Uppercase During Parse */

greeting = 'hello world'

/* Parse into two words, both uppercased */
PARSE UPPER VAR greeting word1 word2

mixed = 'John Doe'

/* Parse into first and last, both uppercased */
PARSE UPPER VAR mixed first last

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal word1, 'HELLO', 'First word should be HELLO'
CALL assert_equal word2, 'WORLD', 'Second word should be WORLD'
CALL assert_equal first, 'JOHN', 'First name should be JOHN'
CALL assert_equal last, 'DOE', 'Last name should be DOE'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
