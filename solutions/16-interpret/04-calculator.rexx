/* Exercise: Simple Expression Evaluator with INTERPRET */

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

evaluate: PROCEDURE
  PARSE ARG expr
  INTERPRET 'answer =' expr
  RETURN answer

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
