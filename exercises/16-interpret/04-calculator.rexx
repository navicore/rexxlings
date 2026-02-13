/* Exercise: Simple Expression Evaluator with INTERPRET
 *
 * INTERPRET makes it easy to evaluate mathematical expressions
 * stored as strings — a mini calculator:
 *
 *   expr = '(10 + 5) * 2'
 *   INTERPRET 'answer = ' expr
 *   SAY answer   -- prints: 30
 *
 * Your task: Write a subroutine `evaluate` that takes an expression
 * string and returns the result by using INTERPRET.
 */

/* I AM NOT DONE */

CALL evaluate '10 + 20'
result1 = RESULT

CALL evaluate '(5 + 3) * 4'
result2 = RESULT

CALL evaluate '100 - 37'
result3 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 30, '10 + 20 should be 30'
CALL assert_equal result2, 32, '(5 + 3) * 4 should be 32'
CALL assert_equal result3, 63, '100 - 37 should be 63'
EXIT 0

/* Write the evaluate subroutine below */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
