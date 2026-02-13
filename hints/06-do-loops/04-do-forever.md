# Hint: DO FOREVER — Infinite Loop with LEAVE

`DO FOREVER` loops indefinitely. You must use `LEAVE` to break out:

```rexx
x = 1
DO FOREVER
  IF x > 100 THEN LEAVE
  x = x + 10
END
/* x is now 101... wait, let's trace: */
/* x=1 -> not >100, x=11, x=21, ..., x=101 -> LEAVE */
```

In this exercise, we start with `value = 1` and double it each
iteration. We want to stop when `value > 1000`:

- After 10 doublings: 1 -> 2 -> 4 -> 8 -> 16 -> 32 -> 64 -> 128
  -> 256 -> 512 -> 1024
- 1024 > 1000, so we LEAVE

Replace `???` with `LEAVE` to exit the loop.
