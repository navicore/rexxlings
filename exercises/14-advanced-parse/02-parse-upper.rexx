/* Exercise: PARSE UPPER — Auto-Uppercase During Parse
 *
 * PARSE UPPER VAR automatically converts the parsed values to
 * uppercase as it assigns them:
 *
 *   name = 'alice'
 *   PARSE UPPER VAR name result
 *   -- result is 'ALICE'
 *
 * This is equivalent to parsing and then calling TRANSLATE(),
 * but more concise.
 *
 * PARSE UPPER works with all forms: VAR, ARG, PULL, VALUE, etc.
 *
 * Your task: Use PARSE UPPER VAR to parse and uppercase the values.
 */

/* I AM NOT DONE */

greeting = 'hello world'

/* Parse into two words, both uppercased */
???

mixed = 'John Doe'

/* Parse into first and last, both uppercased */
???

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
