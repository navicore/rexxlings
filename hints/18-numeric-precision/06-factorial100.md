# Hint: 100! (Factorial) — Big Number Showcase

100! (100 factorial) = 100 * 99 * 98 * ... * 2 * 1

The result has 158 digits, so you need `NUMERIC DIGITS 200` (or at
least 158) to compute it exactly.

The factorial loop pattern:

```rexx
NUMERIC DIGITS 200
factorial = 1
DO i = 2 TO 100
  factorial = factorial * i
END
```

Start with `factorial = 1` and multiply by each number from 2 to 100.

Count the digits with `LENGTH()`:

```rexx
digit_count = LENGTH(factorial)
```

The result should:
- Have 158 digits
- Start with `93326`
- End with `00` (because 100! includes factors of 10, 20, etc.)

Replace each `???` with the appropriate values. The loop should
go from 2 to 100.
