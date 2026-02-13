# Hint: Recursion — Fibonacci

The Fibonacci function has two base cases and one recursive case:

```
fib(0) = 0
fib(1) = 1
fib(n) = fib(n-1) + fib(n-2)
```

In REXX, this translates to:

```rexx
fib: PROCEDURE
  PARSE ARG n
  IF n <= 0 THEN RETURN 0
  IF n = 1 THEN RETURN 1
  RETURN fib(n - 1) + fib(n - 2)
```

Key points:
- Use `PROCEDURE` so each recursive call has its own local `n`
- Check `n <= 0` first (returns 0)
- Check `n = 1` second (returns 1)
- Otherwise, add the two previous Fibonacci numbers

This simple recursive approach works for small inputs but is slow
for large ones because it recalculates the same values many times.
For `fib(10) = 55`, it is fast enough.
