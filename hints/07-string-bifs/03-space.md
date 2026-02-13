# Hint: SPACE — Normalize Whitespace

`SPACE` takes a string and an optional number of blanks:

```rexx
SPACE(string)      /* 1 blank between each word (default) */
SPACE(string, n)   /* n blanks between each word           */
```

Special cases:
- `SPACE(string, 0)` removes all blanks, concatenating all words
- `SPACE(string, 1)` is the same as `SPACE(string)` — one blank each

Leading and trailing blanks are always removed regardless of `n`.

Replace each right-hand side with the appropriate `SPACE` call.
