# Hint: NUMERIC DIGITS — Setting Precision

REXX defaults to 9 significant digits of precision. You can check
and change this:

```rexx
SAY DIGITS()         /* prints: 9 */
NUMERIC DIGITS 20
SAY DIGITS()         /* prints: 20 */
SAY 2**50            /* prints: 1125899906842624 */
```

Without increasing DIGITS, `2**50` would be rounded to 9 digits
(1.12589991E+15 or similar).

For this exercise:

1. Get the default with `DIGITS()`
2. Set precision with `NUMERIC DIGITS 20`
3. Compute `2 ** 50`
4. Get the new precision with `DIGITS()`

```rexx
default_digits = DIGITS()
NUMERIC DIGITS 20
big_number = 2 ** 50
new_digits = DIGITS()
```
