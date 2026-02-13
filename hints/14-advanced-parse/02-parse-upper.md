# Hint: PARSE UPPER — Auto-Uppercase During Parse

`PARSE UPPER VAR` parses a variable and converts all extracted values
to uppercase automatically:

```rexx
name = 'alice bob'
PARSE UPPER VAR name first last
/* first = 'ALICE', last = 'BOB' */
```

This is the same as:

```rexx
PARSE VAR name first last
first = TRANSLATE(first)
last = TRANSLATE(last)
```

But `PARSE UPPER` does it in one step.

For this exercise, you need two `PARSE UPPER VAR` statements:

1. Parse `greeting` into `word1` and `word2`
2. Parse `mixed` into `first` and `last`

```rexx
PARSE UPPER VAR greeting word1 word2
```
