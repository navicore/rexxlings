# Hint: Variable Patterns — Dynamic Parse Delimiters

A variable pattern uses parentheses around a variable name to use its
value as the delimiter:

```rexx
delim = '='
PARSE VAR pair key (delim) value
/* If pair = 'color=blue', then key = 'color', value = 'blue' */
```

You can chain multiple delimiters:

```rexx
sep = '/'
PARSE VAR date_str year (sep) month (sep) day
/* If date_str = '2025/06/15', then year='2025', month='06', day='15' */
```

This is equivalent to using a literal string pattern like `'/'`, but
the delimiter comes from a variable instead.

Replace each `???` with the appropriate `PARSE VAR` statement using
the variable pattern syntax `(delim)` or `(sep)`.
