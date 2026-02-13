/* Exercise: Dynamic Function Calls with INTERPRET
 *
 * INTERPRET can build and execute function calls at runtime:
 *
 *   func = 'LENGTH'
 *   INTERPRET 'answer = ' func '("hello")'
 *   SAY answer   -- prints: 5
 *
 * This lets you call different functions based on runtime data.
 *
 * Your task: Use INTERPRET to call functions dynamically.
 */

/* I AM NOT DONE */

/* Use INTERPRET to call REVERSE("hello") and store in result1 */
???

/* Use INTERPRET to call LENGTH("REXX programming") and store in result2 */
???

/* Use INTERPRET to call SUBSTR("abcdef", 3, 2) and store in result3 */
???

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
