/* Exercise: FizzBuzz with SELECT
 *
 * The classic FizzBuzz problem: for numbers 1 to 20, produce:
 *   - 'Fizz'     if divisible by 3
 *   - 'Buzz'     if divisible by 5
 *   - 'FizzBuzz' if divisible by both 3 and 5
 *   - the number itself otherwise
 *
 * The remainder operator in REXX is //.
 *   15 // 3 = 0  (15 is divisible by 3)
 *
 * IMPORTANT: In SELECT, put the most specific WHEN first
 * (divisible by both) since only the first match executes.
 *
 * Your task: Fix the SELECT inside the loop to produce the
 * correct FizzBuzz output, building a space-separated string.
 */

/* I AM NOT DONE */

answer = ''

DO i = 1 TO 20
  SELECT
    /* Fix: check divisible by BOTH 3 and 5 first */
    WHEN ??? THEN word = 'FizzBuzz'
    /* Fix: check divisible by 3 */
    WHEN ??? THEN word = 'Fizz'
    /* Fix: check divisible by 5 */
    WHEN ??? THEN word = 'Buzz'
    OTHERWISE word = i
  END
  IF answer = '' THEN answer = word
  ELSE answer = answer word
END

/* ===== Tests — do not edit below this line ===== */
/* Parse out specific positions to check */
PARSE VAR answer w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 .
CALL assert_equal w1, '1', 'position 1 should be 1'
CALL assert_equal w3, 'Fizz', 'position 3 should be Fizz'
CALL assert_equal w5, 'Buzz', 'position 5 should be Buzz'
CALL assert_equal w6, 'Fizz', 'position 6 should be Fizz'
CALL assert_equal w10, 'Buzz', 'position 10 should be Buzz'
CALL assert_equal w15, 'FizzBuzz', 'position 15 should be FizzBuzz'
CALL assert_true w15 = 'FizzBuzz', 'position 15 must be FizzBuzz'
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
