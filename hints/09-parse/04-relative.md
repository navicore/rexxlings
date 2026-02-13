# Hint: PARSE with Relative Positional Patterns (+n)

Relative positions move forward from where the last field ended:

```rexx
PARSE VAR source a +3 b +4 c
```

- `a` gets the first 3 characters
- `b` gets the next 4 characters
- `c` gets everything remaining

For `'TOY1234US'`:
```
TOY  1234  US
+3   +4    rest
```

The template would be: `category +3 number +4 region`

You can mix relative positions with literal patterns. For example,
the timestamp can use literal `':'` delimiters.

To skip characters (like a space), use `+1` without a variable name
or assign to a throwaway variable:

```rexx
PARSE VAR log sev +1 +1 code +4 +1 msg
/* +1 (no var) skips one character */
```
