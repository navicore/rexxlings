# Hint: NUMERIC FUZZ — The Fuzz Setting

`NUMERIC FUZZ n` sets the number of digits ignored in comparisons.

The `FUZZ()` function returns the current fuzz setting:

```rexx
SAY FUZZ()           /* 0 (default) */
NUMERIC FUZZ 2
SAY FUZZ()           /* 2 */
NUMERIC FUZZ 0       /* reset */
```

FUZZ must be less than DIGITS.

For this exercise:
- Use `FUZZ()` to query the setting
- Use `NUMERIC FUZZ 2` to set it
- Use `NUMERIC FUZZ 0` to reset it
