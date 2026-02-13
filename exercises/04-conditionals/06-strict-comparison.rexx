/* Exercise: Strict vs Normal Comparison
 *
 * REXX has two kinds of string comparison:
 *
 *   =   Normal comparison: strips leading/trailing blanks before
 *       comparing, so '  hello  ' = 'hello' is TRUE (1).
 *
 *   ==  Strict comparison: compares strings exactly as-is,
 *       so '  hello  ' == 'hello' is FALSE (0).
 *
 * Similarly \= (not equal) and \== (strict not equal).
 *
 * Your task: Predict the results of each comparison and set the
 * variables to the correct values (1 or 0).
 */

/* I AM NOT DONE */

padded = '  hello  '
plain = 'hello'

/* Fix: set each result to what the comparison returns (1 or 0) */
normalEqual = ???       /* padded = plain  */
strictEqual = ???       /* padded == plain */
normalNotEqual = ???    /* padded \= plain */
strictNotEqual = ???    /* padded \== plain */

sameExact = '  hello  '
/* Fix: what does padded == sameExact return? */
exactMatch = ???        /* padded == sameExact */

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal normalEqual, '1', 'normal = should be 1 (strips blanks)'
CALL assert_equal strictEqual, '0', 'strict == should be 0 (blanks differ)'
CALL assert_equal normalNotEqual, '0', 'normal \= should be 0'
CALL assert_equal strictNotEqual, '1', 'strict \== should be 1'
CALL assert_equal exactMatch, '1', 'strict == should be 1 for identical strings'
CALL assert_true normalEqual = 1, 'normal comparison should be true'
CALL assert_true strictEqual = 0, 'strict comparison should be false'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
