# Hint: Word Frequency Counter

To count word frequencies, you need two things in the loop:

1. **Extract and uppercase the word:**
   ```rexx
   w = TRANSLATE(WORD(sentence, i))
   ```
   `WORD(sentence, i)` gets the i-th word. `TRANSLATE()` with no extra
   arguments uppercases it. Uppercasing is important because REXX stem
   tails are case-sensitive.

2. **Increment the counter:**
   ```rexx
   count.w = count.w + 1
   ```
   Since we set `count. = 0`, any uninitialized `count.WORD` starts at 0.

Replace the first `???` with the word extraction and the second with
the increment.

Stem variables use the **value** of the variable as the tail:
`count.w` uses the value of `w` (e.g., `'THE'`) as the key, accessing
`count.THE`.
