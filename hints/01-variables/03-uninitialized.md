# Hint: Uninitialized Variables

When you reference a variable that has never been assigned a value,
REXX does not throw an error. Instead, it returns the variable's
name converted to UPPERCASE.

```rexx
SAY greeting
```

If `greeting` has never been assigned, this prints: `GREETING`

This means:
- `foo` (uninitialized) returns `'FOO'`
- `myVar` (uninitialized) returns `'MYVAR'`

Replace each `???` in the test calls with the correct uppercase string.
Remember to put quotes around the string values.
