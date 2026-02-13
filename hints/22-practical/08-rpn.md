# Hint: RPN Calculator

Use the REXX queue as a stack with PUSH and PULL.

**Key algorithm:**
```rexx
rpn: PROCEDURE
  PARSE ARG expr
  /* Clear any leftover queue items */
  DO WHILE QUEUED() > 0
    PULL .
  END
  DO i = 1 TO WORDS(expr)
    token = WORD(expr, i)
    IF DATATYPE(token, 'N') THEN
      PUSH token              /* number: push onto stack */
    ELSE DO
      PULL b                  /* operator: pop two operands */
      PULL a                  /* note: b is popped first (LIFO) */
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
```

**Important details:**
- `DATATYPE(token, 'N')` checks if a token is a number
- When you PULL two operands, `b` comes first (top of stack), then `a`
- For subtraction and division, order matters: `a - b`, not `b - a`
- Clear the queue at the start to avoid leftover data
- `PULL .` discards the pulled value (`.` is a placeholder)
