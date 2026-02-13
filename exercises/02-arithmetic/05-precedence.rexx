/* Exercise: Operator Precedence
 *
 * REXX follows standard mathematical precedence:
 *
 *   1. **  (power)           — highest
 *   2. unary + and -         (prefix signs)
 *   3. * / % //              (multiply, divide, int-div, remainder)
 *   4. + -                   (add, subtract) — lowest
 *
 * Use parentheses ( ) to override the default order.
 *
 * Examples:
 *   2 + 3 * 4      -->  14     (multiply first: 3*4=12, then 2+12)
 *   (2 + 3) * 4    -->  20     (parentheses first: 5*4=20)
 *
 * Your task: Add parentheses or rearrange to get the correct results.
 */

/* I AM NOT DONE */

/* This expression should equal 20, not 14.
 * Add parentheses to make addition happen before multiplication. */
result1 = 2 + 3 * 4

/* This expression should equal 25.
 * Add parentheses so that 10 - 5 is computed first. */
result2 = 10 - 5 * 5

/* Calculate: add 3 and 7 first, then raise to the power of 2 */
result3 = ???

/* Calculate: 100 minus (8 divided by 2), plus 1 */
result4 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, '20', 'result1 should be 20'
CALL assert_equal result2, '25', 'result2 should be 25'
CALL assert_equal result3, '100', 'result3 should be 100'
CALL assert_equal result4, '97', 'result4 should be 97'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
