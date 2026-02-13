# Hint: Mutual Recursion — isEven / isOdd

Mutual recursion means two functions call each other. Each must
use `PROCEDURE` for variable isolation.

The logic:

- `isEven(0)` returns `1` (zero is even)
- `isEven(n)` returns `isOdd(n - 1)`
- `isOdd(0)` returns `0` (zero is not odd)
- `isOdd(n)` returns `isEven(n - 1)`

In REXX:

```rexx
isEven: PROCEDURE
  PARSE ARG n
  IF n = 0 THEN RETURN 1
  RETURN isOdd(n - 1)

isOdd: PROCEDURE
  PARSE ARG n
  IF n = 0 THEN RETURN 0
  RETURN isEven(n - 1)
```

Trace through an example to see how it works:
- `isEven(3)` calls `isOdd(2)`
- `isOdd(2)` calls `isEven(1)`
- `isEven(1)` calls `isOdd(0)`
- `isOdd(0)` returns `0`
- So `isEven(3) = 0` (3 is not even)
