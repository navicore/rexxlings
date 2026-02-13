# Hint: Text Formatter — Word Wrap

Build lines word by word, checking if each word fits:

```rexx
wordWrap: PROCEDURE
  PARSE ARG text, maxwidth
  answer = ''
  current_line = ''
  DO i = 1 TO WORDS(text)
    w = WORD(text, i)
    IF current_line = '' THEN
      current_line = w
    ELSE IF LENGTH(current_line) + 1 + LENGTH(w) <= maxwidth THEN
      current_line = current_line w
    ELSE DO
      /* Current line is full, start a new one */
      IF answer = '' THEN
        answer = current_line
      ELSE
        answer = answer || '|' || current_line
      current_line = w
    END
  END
  /* Don't forget the last line */
  IF current_line \= '' THEN DO
    IF answer = '' THEN
      answer = current_line
    ELSE
      answer = answer || '|' || current_line
  END
  RETURN result
```

**Key logic:**
- `LENGTH(current_line) + 1 + LENGTH(w)` checks if the word fits
  (the +1 accounts for the space between words)
- Lines are separated by `|` so we can split them in the test
- Use `||` for concatenation without spaces
- `current_line = current_line w` uses REXX's automatic space
  concatenation to add words with a space between them
