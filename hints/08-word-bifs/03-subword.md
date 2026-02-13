# Hint: SUBWORD — Extract a Range of Words

`SUBWORD` extracts a contiguous group of words:

```rexx
SUBWORD(string, start, count)   /* 'count' words from 'start' */
SUBWORD(string, start)          /* all words from 'start' onward */
```

Examples:

```rexx
text = 'a b c d e'
SUBWORD(text, 2, 3)   /* => 'b c d'   */
SUBWORD(text, 4)       /* => 'd e'     */
SUBWORD(text, 1, 2)   /* => 'a b'     */
```

The words are returned with a single blank between each, regardless
of the original spacing.
