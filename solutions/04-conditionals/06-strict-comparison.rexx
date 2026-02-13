/* Exercise: Strict vs Normal Comparison */

padded = '  hello  '
plain = 'hello'

normalEqual = 1       /* padded = plain   -> 1 (strips blanks) */
strictEqual = 0       /* padded == plain  -> 0 (blanks differ) */
normalNotEqual = 0    /* padded \= plain  -> 0 */
strictNotEqual = 1    /* padded \== plain -> 1 */

sameExact = '  hello  '
exactMatch = 1        /* padded == sameExact -> 1 (identical) */

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
