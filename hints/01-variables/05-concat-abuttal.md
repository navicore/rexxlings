# Hint: Abuttal Concatenation with ||

The `||` operator joins two strings together with NO space:

```rexx
a = 'fire'
b = 'truck'
answer = a || b     /* result is 'firetruck' */
```

You can mix `||` with literal strings to insert characters:

```rexx
area = '555'
num = '1234'
phone = area || '-' || num    /* result is '555-1234' */
```

The key difference from blank concatenation:
- `a b` gives `'fire truck'` (with a space)
- `a || b` gives `'firetruck'` (no space)
