/* Exercise: RPN Calculator
 *
 * Reverse Polish Notation (RPN) puts operators after operands:
 *   "3 4 +" means 3 + 4 = 7
 *   "3 4 + 2 *" means (3 + 4) * 2 = 14
 *
 * Algorithm using REXX queue as a stack:
 * 1. Read each token (word) from the expression
 * 2. If it is a number, PUSH it onto the queue
 * 3. If it is an operator (+, -, *, /), PULL two operands,
 *    compute the result, and PUSH it back
 * 4. At the end, PULL the final answer
 *
 * Note: PULL gets operands in reverse order (LIFO), so the
 * second PULL gives the first operand.
 *
 * Your task: Write an rpn function that evaluates RPN expressions.
 */

/* I AM NOT DONE */

CALL rpn '3 4 +'
result1 = RESULT

CALL rpn '3 4 + 2 *'
result2 = RESULT

CALL rpn '5 1 2 + 4 * + 3 -'
result3 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 7, '3 4 + should be 7'
CALL assert_equal result2, 14, '3 4 + 2 * should be 14'
CALL assert_equal result3, 14, '5 1 2 + 4 * + 3 - should be 14'
EXIT 0

/* Write your rpn subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
