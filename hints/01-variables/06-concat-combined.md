# Hint: Combined Concatenation

You can mix blank concatenation and `||` in the same expression.

For `full_name`, all parts are separated by spaces, so blank
concatenation works:

```rexx
full_name = title first_name last_name
```

For `email`, you need NO spaces at all, so use `||` throughout:

```rexx
email = 'jane' || '.' || 'doe' || '@example.com'
```

For `greeting`, you need to be careful about where spaces go and
where they do not. The comma right after "Hello" needs `||`, but
the parts of the name can use blank concatenation. Think about
building it in pieces:

```rexx
greeting = 'Hello,' full_name || '!'
```

Remember:
- Use a space between values for blank concatenation (adds a space)
- Use `||` when you do NOT want a space
