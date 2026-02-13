# Hint: Combined Word BIFs — Capitalize the First Word

Break the problem into steps:

```rexx
text = 'hello world'
first = WORD(text, 1)            /* => 'hello' */
upper_first = TRANSLATE(first)   /* => 'HELLO' */
rest = SUBWORD(text, 2)          /* => 'world' */
answer = upper_first rest        /* => 'HELLO world' */
```

The blank-concatenation operator (just a space between expressions)
joins two strings with a single blank.

For reversing words, you can extract each word by position:

```rexx
forward = 'one two three'
w1 = WORD(forward, 1)   /* 'one'   */
w2 = WORD(forward, 2)   /* 'two'   */
w3 = WORD(forward, 3)   /* 'three' */
reversed = w3 w2 w1     /* 'three two one' */
```
