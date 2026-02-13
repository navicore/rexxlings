# Hint: POS() — Finding Strings

`POS(needle, haystack)` returns the starting position of `needle`
within `haystack`, or `0` if not found.

**Important:** The needle (what you are searching for) comes FIRST.

```rexx
POS('fox', 'The quick brown fox')    /* 17 */
POS('cat', 'The quick brown fox')    /* 0 (not found) */
```

POS is case-sensitive:

```rexx
sentence = 'The quick brown fox jumps over the lazy dog'
POS('The', sentence)    /* 1  (capital T at start) */
POS('the', sentence)    /* 32 (lowercase t later) */
```

To check if a substring exists (as a boolean 1/0), compare
the POS result to 0:

```rexx
contains_fox = (POS('fox', sentence) > 0)    /* 1 */
contains_cat = (POS('cat', sentence) > 0)    /* 0 */
```

For `pos3`, search for `'cat'` — it will return `0`.

Count the characters carefully for positions. Remember:
- `'The quick brown fox jumps over the lazy dog'`
-  Position 1 is `T`, position 5 is `q`, position 17 is `f` (of fox)
