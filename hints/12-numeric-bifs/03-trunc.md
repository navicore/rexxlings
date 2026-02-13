# Hint: TRUNC() — Truncating Decimal Numbers

`TRUNC(number, n)` truncates (cuts off) a number to `n` decimal places
without rounding:

```rexx
SAY TRUNC(3.14159, 2)   /* prints: 3.14 */
SAY TRUNC(3.14159, 0)   /* prints: 3 */
SAY TRUNC(3.14159)      /* prints: 3 (n defaults to 0) */
SAY TRUNC(9.999, 1)     /* prints: 9.9 (NOT 10.0) */
```

This is different from rounding. TRUNC simply removes digits beyond
the specified precision.

Replace each `???` with the appropriate `TRUNC()` call. For example:

```rexx
pi_2dec = TRUNC(3.14159, 2)
```
