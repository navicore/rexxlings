/* Exercise: Palindrome Checker
 *
 * A palindrome reads the same forwards and backwards.
 * Examples: 'racecar', 'level', 'madam'
 *
 * Strategy:
 * 1. Uppercase the input with TRANSLATE for case-insensitive check
 * 2. Reverse it with REVERSE
 * 3. Compare the two
 *
 * Your task: Write an isPalindrome function that returns 1 for
 * palindromes and 0 otherwise.
 */

/* I AM NOT DONE */

CALL isPalindrome 'racecar'
result1 = RESULT

CALL isPalindrome 'hello'
result2 = RESULT

CALL isPalindrome 'Level'
result3 = RESULT

CALL isPalindrome 'a'
result4 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 1, 'racecar should be a palindrome'
CALL assert_equal result2, 0, 'hello should not be a palindrome'
CALL assert_equal result3, 1, 'Level should be a palindrome (case-insensitive)'
CALL assert_equal result4, 1, 'Single character should be a palindrome'
EXIT 0

/* Write your isPalindrome subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
