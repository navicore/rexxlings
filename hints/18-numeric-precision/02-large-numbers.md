# Hint: Large Number Arithmetic

REXX can compute with arbitrarily large numbers. You just need to
set `NUMERIC DIGITS` high enough to hold all the digits:

```rexx
NUMERIC DIGITS 50
SAY 2**100
/* prints: 1267650600228229401496703205376 */
```

2**100 has 31 digits, so you need at least `NUMERIC DIGITS 31`
(but using a larger value like 50 is fine and safer).

Use `LENGTH()` to count the digits in the result:

```rexx
answer = 2 ** 100
digit_count = LENGTH(result)
```

Replace each `???`:
1. `NUMERIC DIGITS 50` (or any value >= 31)
2. `answer = 2 ** 100`
3. `digit_count = LENGTH(result)`
