# Hint: Practical Pattern — Word Frequency Counter

This exercise combines stems with string functions to count words.

The key insight: with `count. = 0`, any new word starts at count 0.
You just increment it:

```rexx
count. = 0
w = 'hello'
count.w = count.w + 1   /* count.HELLO is now 1 */
count.w = count.w + 1   /* count.HELLO is now 2 */
```

To track unique words, check if the count is 0 before incrementing.
If it is, this is the first time you have seen the word:

```rexx
IF count.w = 0 THEN unique = unique w
count.w = count.w + 1
```

The `unique = unique w` concatenation adds a space then the word.
The leading space on the first word is harmless since `WORDS()`
ignores leading/trailing blanks.

Put these two lines inside the `DO` loop, replacing `???`:

```rexx
DO i = 1 TO WORDS(sentence)
  w = WORD(sentence, i)
  IF count.w = 0 THEN unique = unique w
  count.w = count.w + 1
END
```
