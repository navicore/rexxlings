/* Exercise: PARSE VAR — Basic Word Splitting
 *
 * PARSE VAR splits a variable's value into parts by whitespace:
 *
 *   PARSE VAR source word1 word2 rest
 *
 * - word1 gets the first word
 * - word2 gets the second word
 * - rest gets everything remaining
 *
 * The last variable in the template receives all leftover text.
 *
 * Your task: Fill in the PARSE VAR templates to extract the values.
 */

/* I AM NOT DONE */

greeting = 'Hello World from REXX'

/* Split into first word and the rest */
PARSE VAR greeting first rest
/* Fix: the PARSE VAR above has the wrong template — or does it? */

/* Split into three separate words plus remainder */
info = 'Alice 30 Engineer at Acme Corp'
PARSE VAR info name age job    /* Fix: this only captures 3 parts;
                                  job will get everything from word 3 on.
                                  Add a 4th variable to capture the leftover */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first, 'Hello', 'first word'
CALL assert_equal rest, 'World from REXX', 'rest of greeting'
CALL assert_equal name, 'Alice', 'name parsed'
CALL assert_equal age, '30', 'age parsed'
CALL assert_equal job, 'Engineer', 'job parsed'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
