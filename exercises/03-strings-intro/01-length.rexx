/* Exercise: LENGTH() — Measuring Strings
 *
 * The LENGTH() built-in function returns the number of characters
 * in a string.
 *
 *   LENGTH('Hello')     -->  5
 *   LENGTH('')          -->  0
 *   LENGTH('Hi there')  -->  8  (spaces count!)
 *
 * Your task: Use LENGTH() to calculate string lengths.
 */

/* I AM NOT DONE */

/* What is the length of 'REXX'? */
len1 = ???

/* What is the length of 'Hello, World!'? (count carefully!) */
len2 = ???

/* What is the length of an empty string? */
len3 = ???

/* Store a string in a variable, then get its length */
message = 'I love REXX'
len4 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal len1, '4', 'len1: LENGTH of REXX should be 4'
CALL assert_equal len2, '13', 'len2: LENGTH of Hello, World! should be 13'
CALL assert_equal len3, '0', 'len3: LENGTH of empty string should be 0'
CALL assert_equal len4, '11', 'len4: LENGTH of I love REXX should be 11'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
