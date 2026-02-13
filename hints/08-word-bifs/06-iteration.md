# Hint: Word Iteration — Loop Over Words with DO

The standard pattern for iterating over words:

```rexx
DO i = 1 TO WORDS(text)
  w = WORD(text, i)
  /* process w */
END
```

To build a result string word by word, you can concatenate with a
blank between each item:

```rexx
answer = ''
DO i = 1 TO WORDS(text)
  w = WORD(text, i)
  answer = result LENGTH(w)
END
answer = STRIP(result)
```

The `STRIP` at the end removes the leading blank that accumulates
from the first concatenation. Alternatively, you can check if
`answer` is empty before adding a space.

Remember: in REXX, putting two expressions next to each other with a
space automatically concatenates them with a blank.
