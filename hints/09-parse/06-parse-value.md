# Hint: PARSE VALUE ... WITH — Parse an Expression

`PARSE VALUE` lets you parse any expression directly:

```rexx
PARSE VALUE 'Hello World' WITH greeting rest
/* greeting = 'Hello', rest = 'World' */
```

The keyword `WITH` separates the expression from the template.

You can parse concatenated values:

```rexx
a = 'Hello'
b = 'World'
PARSE VALUE a b WITH first second
/* first = 'Hello', second = 'World' */
```

And function results:

```rexx
PARSE VALUE STRIP('  Alice  ') STRIP('  30  ') WITH name age
/* name = 'Alice', age = '30' */
```

For this exercise:
- The first parse needs a literal string: `'Good Morning'`
- The second parse needs to combine `part1` and `part2`: `part1 part2`
- The third parse needs STRIP applied to both variables:
  `STRIP(raw_name) STRIP(raw_age)`
