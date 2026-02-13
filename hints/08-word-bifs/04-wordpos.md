# Hint: WORDPOS — Find a Word's Position

`WORDPOS` searches for a word (or phrase) by word boundaries:

```rexx
WORDPOS(phrase, string)
```

It returns the word number (1-based) where the phrase starts, or `0`
if not found.

```rexx
text = 'red green blue'
WORDPOS('green', text)       /* => 2 */
WORDPOS('green blue', text)  /* => 2 (phrase starts at word 2) */
WORDPOS('pink', text)        /* => 0 (not found) */
```

Note: `WORDPOS` matches whole words only. Searching for `'re'` in
`'red green'` returns `0` because `'re'` is not a complete word.
