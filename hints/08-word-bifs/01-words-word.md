# Hint: WORDS and WORD — Count and Extract Words

REXX treats any sequence of non-blank characters as a "word."

**WORDS** counts them:

```rexx
WORDS('one two three')   /* => 3 */
```

**WORD** extracts one by position:

```rexx
WORD('one two three', 1)   /* => 'one'   */
WORD('one two three', 3)   /* => 'three' */
```

To get the last word, combine both:

```rexx
text = 'a b c'
last = WORD(text, WORDS(text))   /* => 'c' */
```
