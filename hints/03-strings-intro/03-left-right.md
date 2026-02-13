# Hint: LEFT() and RIGHT() — Taking from the Edges

`LEFT(string, n)` takes the first `n` characters from the left:

```rexx
LEFT('Hello World', 5)     /* 'Hello' */
```

`RIGHT(string, n)` takes the last `n` characters from the right:

```rexx
RIGHT('Hello World', 5)    /* 'World' */
```

For `'Good Morning'`:
- `LEFT('Good Morning', 4)` gives `'Good'`
- `RIGHT('Good Morning', 7)` gives `'Morning'`

For `'report.txt'`:
- The extension is the last 3 characters
- The base name before the dot is the first 6 characters

When `LEFT` is given a length larger than the string, it pads
with spaces:

```rexx
padded = LEFT('Hi', 10)
/* padded is 'Hi        ' (Hi plus 8 spaces, total 10 chars) */
LENGTH(padded)              /* '10' */
```
