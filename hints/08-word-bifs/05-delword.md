# Hint: DELWORD — Delete Words from a String

`DELWORD` removes words by position:

```rexx
DELWORD(string, start, count)   /* remove 'count' words from 'start' */
DELWORD(string, start)          /* remove from 'start' to end         */
```

Examples:

```rexx
text = 'a b c d e'
DELWORD(text, 2, 1)   /* => 'a c d e'   (remove 'b') */
DELWORD(text, 3, 2)   /* => 'a b e'     (remove 'c d') */
DELWORD(text, 4)       /* => 'a b c'     (remove 'd e') */
```

Count the words to figure out the correct start position for each
task. Use `WORDS(sentence)` if you need the total count to calculate
positions.
