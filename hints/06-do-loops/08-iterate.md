# Hint: ITERATE — Skip to Next Iteration

`ITERATE` skips the remaining instructions in the current loop
iteration and starts the next one:

```rexx
DO i = 1 TO 5
  IF i = 3 THEN ITERATE
  SAY i   /* prints 1, 2, 4, 5 (skips 3) */
END
```

The remainder operator `//` is useful for checking odd/even:

```rexx
7 // 2   /* result: 1 (odd) */
8 // 2   /* result: 0 (even) */
```

To skip odd numbers, check if `i // 2 \= 0` (remainder is not
zero, meaning odd), and then ITERATE.

Replace `???` with `ITERATE`.
