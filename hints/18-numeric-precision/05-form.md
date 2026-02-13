# Hint: NUMERIC FORM — Scientific vs Engineering Notation

`NUMERIC FORM` controls how numbers are displayed in exponential notation:

```rexx
NUMERIC DIGITS 5
big = 123456789

NUMERIC FORM SCIENTIFIC
SAY big + 0    /* prints: 1.2346E+8 */

NUMERIC FORM ENGINEERING
SAY big + 0    /* prints: 123.46E+6 */
```

- **SCIENTIFIC**: one non-zero digit before the decimal point
- **ENGINEERING**: exponent is a multiple of 3 (like kilo, mega, etc.)

The `FORM()` function returns the current setting:

```rexx
SAY FORM()   /* prints: SCIENTIFIC or ENGINEERING */
```

The `big + 0` trick forces REXX to re-format the number using the
current DIGITS and FORM settings.

Replace each `???`:
1. `default_form = FORM()`
2. `NUMERIC FORM ENGINEERING`
3. `current_form = FORM()`
