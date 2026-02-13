# Hint: DO with Counter — Counting Loop

A counted DO loop uses a control variable that increments
automatically:

```rexx
DO i = 1 TO 5
  SAY i    /* prints 1, 2, 3, 4, 5 */
END
```

To accumulate a sum, add the control variable to a running total:

```rexx
total = 0
DO i = 1 TO 5
  total = total + i
END
/* total is now 15 */
```

Replace the first `???` with `10` (the upper bound) and the
second `???` with `total + i` (the accumulation expression).
