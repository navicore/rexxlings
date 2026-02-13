/* Exercise: RPN Calculator */

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

rpn: PROCEDURE
  PARSE ARG expr
  /* Clear the queue first */
  DO WHILE QUEUED() > 0
    PULL .
  END
  DO i = 1 TO WORDS(expr)
    token = WORD(expr, i)
    IF DATATYPE(token, 'N') THEN
      PUSH token
    ELSE DO
      PULL b
      PULL a
      SELECT
        WHEN token = '+' THEN PUSH a + b
        WHEN token = '-' THEN PUSH a - b
        WHEN token = '*' THEN PUSH a * b
        WHEN token = '/' THEN PUSH a / b
        OTHERWISE NOP
      END
    END
  END
  PULL answer
  RETURN answer

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
