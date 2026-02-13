# Hint: COPIES() — Repeating Strings

`COPIES(string, n)` repeats a string `n` times:

```rexx
COPIES('*', 5)         /* '*****' */
COPIES('ab', 3)        /* 'ababab' */
```

For the separator, you need 20 equal signs:

```rexx
separator = COPIES('=', 20)
```

For the chant, note that each repetition includes the trailing
space:

```rexx
chant = COPIES('REXX ', 3)   /* 'REXX REXX REXX ' */
```

For the box top, combine `COPIES` with `||` concatenation:

```rexx
box_top = '+' || COPIES('-', 4) || '+'
```

You can nest function calls:

```rexx
sep_len = LENGTH(COPIES('=', 20))
```

Or use a variable:

```rexx
sep_len = LENGTH(separator)
```
