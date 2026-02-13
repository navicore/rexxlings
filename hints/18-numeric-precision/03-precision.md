# Hint: Precision Effects on Division

`NUMERIC DIGITS n` controls how many significant digits REXX keeps:

```rexx
NUMERIC DIGITS 9
SAY 1/3    /* prints: 0.333333333 (9 significant digits) */

NUMERIC DIGITS 30
SAY 1/3    /* prints: 0.333333333333333333333333333333 (30 digits) */
```

You can change NUMERIC DIGITS multiple times in a program. Each
change affects subsequent calculations.

For this exercise:

```rexx
NUMERIC DIGITS 9
result_9 = 1 / 3

NUMERIC DIGITS 30
result_30 = 1 / 3
```

The `LENGTH()` of `result_30` will be larger because it contains
more decimal places.
