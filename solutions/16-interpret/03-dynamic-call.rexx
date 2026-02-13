/* Exercise: Dynamic Function Calls with INTERPRET */

/* Use INTERPRET to call REVERSE("hello") and store in result1 */
INTERPRET "result1 = REVERSE('hello')"

/* Use INTERPRET to call LENGTH("REXX programming") and store in result2 */
INTERPRET "result2 = LENGTH('REXX programming')"

/* Use INTERPRET to call SUBSTR("abcdef", 3, 2) and store in result3 */
INTERPRET "result3 = SUBSTR('abcdef', 3, 2)"

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 'olleh', 'REVERSE(hello) should be olleh'
CALL assert_equal result2, 16, 'LENGTH(REXX programming) should be 16'
CALL assert_equal result3, 'cd', 'SUBSTR(abcdef, 3, 2) should be cd'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
