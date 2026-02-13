/* Exercise: REVERSE() — Flipping Strings
 *
 * REVERSE(string) returns the string with characters in
 * reverse order.
 *
 *   REVERSE('Hello')    -->  'olleH'
 *   REVERSE('12345')    -->  '54321'
 *   REVERSE('abba')     -->  'abba'  (a palindrome!)
 *
 * Your task: Use REVERSE() and predict the results.
 */

/* I AM NOT DONE */

/* Reverse the string 'REXX' */
rev1 = ???

/* Reverse the string 'desserts' */
rev2 = ???

/* A palindrome reads the same forwards and backwards.
 * Check if 'racecar' is a palindrome by comparing it
 * to its reverse. Store 1 if true, 0 if false. */
word = 'racecar'
is_palindrome = ???

/* Check if 'hello' is a palindrome */
word2 = 'hello'
is_palindrome2 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal rev1, 'XXER', 'rev1: REVERSE of REXX should be XXER'
CALL assert_equal rev2, 'stressed', 'rev2: REVERSE of desserts should be stressed'
CALL assert_equal is_palindrome, '1', 'racecar should be a palindrome'
CALL assert_equal is_palindrome2, '0', 'hello should not be a palindrome'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
