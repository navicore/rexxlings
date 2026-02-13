/* Exercise: Palindrome Checker */

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

isPalindrome: PROCEDURE
  PARSE ARG text
  upper_text = TRANSLATE(text)
  IF upper_text = REVERSE(upper_text) THEN
    RETURN 1
  RETURN 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
