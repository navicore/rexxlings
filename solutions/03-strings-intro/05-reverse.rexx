/* Exercise: REVERSE() — Flipping Strings */

/* Reverse the string 'REXX' */
rev1 = REVERSE('REXX')

/* Reverse the string 'desserts' */
rev2 = REVERSE('desserts')

/* A palindrome reads the same forwards and backwards. */
word = 'racecar'
is_palindrome = (word == REVERSE(word))

/* Check if 'hello' is a palindrome */
word2 = 'hello'
is_palindrome2 = (word2 == REVERSE(word2))

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
