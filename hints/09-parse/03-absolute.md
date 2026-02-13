# Hint: PARSE with Absolute Positional Patterns

Absolute positions let you extract fixed-width columns:

```rexx
PARSE VAR source 1 var1 5 var2 9 var3
```

This means:
- `var1` = characters at positions 1-4 (up to, but not including, 5)
- `var2` = characters at positions 5-8
- `var3` = characters at position 9 onward

For the date `'20251225'`:
```
Position: 1234 56 78
Content:  2025 12 25
```

So the parse template would be: `1 year 5 month 7 day`

For the fixed-width record `'Alice     SalesA001'`:
```
Position: 1234567890 12345 6789
           (10 chars) (5ch) (4ch)
```

The template would be: `1 rec_name 11 rec_dept 16 rec_id`
