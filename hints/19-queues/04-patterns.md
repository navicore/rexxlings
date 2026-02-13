# Hint: Queue Patterns — Reversing a Word List

To reverse a list of words using the queue:

1. Use `WORD(sentence, i)` to extract each word
2. Use `PUSH` to put each word on the queue (LIFO)
3. Pull them back — they come out in reverse order

Inside the DO loop, you need to push each word:

```rexx
DO i = 1 TO WORDS(sentence)
  PUSH WORD(sentence, i)
END
```

After pushing `'one'`, `'two'`, `'three'`, `'four'`, the queue looks like
(top to bottom):
- four
- three
- two
- one

So PULL gives you `FOUR` first, then `THREE`, etc. — reversed!

The rest of the code (building the reversed string) is already provided.
You just need to replace the `???` with the PUSH statement.
