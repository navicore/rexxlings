# Hint: Integer Division and Remainder

The `%` operator performs integer division (discarding any fraction):

```rexx
answer = 17 % 5      /* result is '3' (not 3.4) */
```

The `//` operator gives the remainder:

```rexx
answer = 17 // 5     /* result is '2' */
```

These two operators are related:
- `a % b` tells you how many whole times `b` fits into `a`
- `a // b` tells you what is left over

For the time conversion, think about it this way:
- `125 % 60` = how many whole hours
- `125 // 60` = leftover minutes
