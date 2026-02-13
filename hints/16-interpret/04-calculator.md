# Hint: Simple Expression Evaluator with INTERPRET

You need to write an `evaluate` subroutine that:
1. Takes an expression string as an argument
2. Uses INTERPRET to evaluate it
3. Returns the result

Here is the pattern:

```rexx
evaluate: PROCEDURE
  PARSE ARG expr
  INTERPRET 'answer =' expr
  RETURN answer
```

Inside the subroutine:
- `PARSE ARG expr` gets the expression string (e.g., `'10 + 20'`)
- `INTERPRET 'answer =' expr` builds and executes `answer = 10 + 20`
- `RETURN answer` sends the result back to the caller

The `PROCEDURE` keyword keeps the subroutine's variables isolated.

Replace the `???` with this subroutine definition.
