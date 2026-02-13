# Hint: PARSE with Dot Placeholder — Skip Tokens

The dot (`.`) is a discard placeholder. It takes a word's place in
the template but throws the value away:

```rexx
text = 'alpha beta gamma delta'
PARSE VAR text . second .
/* second = 'beta' (first and rest are discarded) */
```

You can combine dots with literal patterns too:

```rexx
data = 'name:Alice:30'
PARSE VAR data . ':' value ':' .
/* value = 'Alice' (name and 30 discarded) */
```

For the first task, you need:
```rexx
PARSE VAR log_line . date .
```

This skips word 1 (ERROR), captures word 2 (the date), and discards
words 3+ with the trailing dot.

For the HTTP response with literal delimiters, use a dot to skip
the first field:

```rexx
PARSE VAR http_response . ':' code ':' .
```
