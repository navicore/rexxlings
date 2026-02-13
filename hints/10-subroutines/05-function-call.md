# Hint: Function-Call Syntax

REXX lets you call subroutines like functions, using parentheses:

```rexx
answer = myFunc(arg1, arg2)
```

This is exactly the same as:

```rexx
CALL myFunc arg1, arg2
answer = RESULT
```

The function-call form is convenient because you can embed it
directly in expressions:

```rexx
SAY 'Total:' add(price, tax)
```

For this exercise, define two subroutines:

```rexx
double: PROCEDURE
  PARSE ARG n
  RETURN n * 2

square: PROCEDURE
  PARSE ARG n
  RETURN n * n
```

Replace `???` with both subroutine definitions.
