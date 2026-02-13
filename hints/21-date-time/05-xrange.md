# Hint: XRANGE — Generating Character Ranges

`XRANGE(start, end)` generates a string of all characters from `start`
to `end` by character code value:

```rexx
lower  = XRANGE('a', 'z')   /* 'abcdefghijklmnopqrstuvwxyz' */
upper  = XRANGE('A', 'Z')   /* 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' */
digits = XRANGE('0', '9')   /* '0123456789' */
```

This is very useful for checking if a character belongs to a category:

```rexx
IF POS(ch, XRANGE('a','z')) > 0 THEN SAY ch 'is lowercase'
```

Replace the first `???` with `XRANGE('a', 'z')` and the second with
`XRANGE('0', '9')`.
