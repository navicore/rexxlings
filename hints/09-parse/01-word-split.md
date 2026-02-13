# Hint: PARSE VAR — Basic Word Splitting

`PARSE VAR` splits a string by whitespace into named variables:

```rexx
text = 'one two three four'
PARSE VAR text a b c
/* a = 'one', b = 'two', c = 'three four' */
```

The **last variable** always gets the remainder, including all extra
words and their separating blanks.

If you want to capture exactly one word per variable and discard the
rest, add an extra variable for the leftover:

```rexx
PARSE VAR text a b c leftover
/* a = 'one', b = 'two', c = 'three', leftover = 'four' */
```

For this exercise:
- The first PARSE already correctly splits into `first` and `rest`
- The second PARSE needs a fourth variable after `job` so that `job`
  only gets word 3 instead of words 3 through the end
