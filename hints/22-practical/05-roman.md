# Hint: Roman Numerals

The standard approach uses two parallel lists — values and numerals:

```rexx
values   = '1000 900 500 400 100 90 50 40 10 9 5 4 1'
numerals = 'M CM D CD C XC L XL X IX V IV I'
```

Loop through each pair. While the number is >= the value, append the
numeral and subtract the value:

```rexx
DO i = 1 TO WORDS(values)
  v = WORD(values, i)
  n = WORD(numerals, i)
  DO WHILE num >= v
    answer = answer || n
    num = num - v
  END
END
```

For example, 42:
- 42 >= 40 (XL): answer = 'XL', num = 2
- 2 >= 1 (I): answer = 'XLI', num = 1
- 1 >= 1 (I): answer = 'XLII', num = 0

Use `||` for concatenation (no space) since some numerals are two
characters (like 'CM').
