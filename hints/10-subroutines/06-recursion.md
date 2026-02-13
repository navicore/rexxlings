# Hint: Recursion — Factorial

Recursion in REXX works just like other languages. The key points:

1. Use `PROCEDURE` to isolate local variables in each recursive call
2. Have a base case that stops the recursion
3. Call the function using function syntax for cleaner expressions

Here is the structure you need:

```rexx
factorial: PROCEDURE
  PARSE ARG n
  IF n <= 1 THEN RETURN 1
  RETURN n * factorial(n - 1)
```

- `PROCEDURE` ensures each call gets its own `n`
- `IF n <= 1 THEN RETURN 1` is the base case
- `n * factorial(n - 1)` is the recursive step

Without `PROCEDURE`, all recursive calls would share the same `n`,
and the recursion would not work correctly.
