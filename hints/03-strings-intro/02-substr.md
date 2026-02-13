# Hint: SUBSTR() — Extracting Substrings

`SUBSTR(string, start, length)` extracts characters from a string.

The `start` position is 1-based (the first character is at position 1).

```rexx
SUBSTR('abcdef', 1, 3)    /* 'abc'    — 3 chars from position 1 */
SUBSTR('abcdef', 4, 2)    /* 'de'     — 2 chars from position 4 */
SUBSTR('abcdef', 4)       /* 'def'    — everything from position 4 */
```

To get the last character, combine `SUBSTR` with `LENGTH`:

```rexx
text = 'Hello'
last = SUBSTR(text, LENGTH(text), 1)    /* 'o' */
```

Or simply omit the length since you only need from that position:

```rexx
last = SUBSTR(text, LENGTH(text))       /* 'o' */
```

For the string `'REXX Programming'`:
- Position 1 is `R`, position 5 is a space, position 6 is `P`
