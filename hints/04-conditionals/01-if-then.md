# Hint: IF/THEN — Simple Conditional

The basic IF/THEN in REXX executes a single instruction when the
condition is true:

```rexx
IF temperature > 30 THEN SAY 'Hot day!'
```

You can also assign variables:

```rexx
IF score >= 90 THEN grade = 'A'
```

Comparison operators return `1` (true) or `0` (false):

| Operator | Meaning                |
|----------|------------------------|
| `=`      | Equal                  |
| `\=`     | Not equal              |
| `>`      | Greater than           |
| `<`      | Less than              |
| `>=`     | Greater than or equal  |
| `<=`     | Less than or equal     |

Add an `IF ... THEN ...` line after each comment to set the variable
when the condition is met.
