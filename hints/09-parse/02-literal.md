# Hint: PARSE with Literal Patterns

Literal patterns in PARSE let you split on specific characters or
strings, not just blanks:

```rexx
data = 'key=value'
PARSE VAR data k '=' v
/* k = 'key', v = 'value' */
```

You can chain multiple literal patterns:

```rexx
csv = 'one,two,three'
PARSE VAR csv a ',' b ',' c
/* a = 'one', b = 'two', c = 'three' */
```

The literal must be quoted (single or double quotes) and must match
the actual delimiter in the string.

For this exercise:
- The config line uses `=` as delimiter, not `?`
- The URL parse looks correct already
- The CSV line needs comma literal patterns: `',' `
