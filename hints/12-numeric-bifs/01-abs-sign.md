# Hint: ABS() and SIGN() Functions

`ABS(number)` returns the absolute (non-negative) value of a number:

```rexx
SAY ABS(-42)    /* prints: 42 */
SAY ABS(3.14)   /* prints: 3.14 */
```

`SIGN(number)` returns an indicator of the sign:
- `-1` if the number is negative
- `0` if the number is zero
- `1` if the number is positive

```rexx
SAY SIGN(-99)   /* prints: -1 */
SAY SIGN(0)     /* prints: 0 */
SAY SIGN(7)     /* prints: 1 */
```

Replace each `???` with the appropriate function call. For example:

```rexx
abs_answer = ABS(-42)
```
