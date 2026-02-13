# Hint: Time Calculations

`TIME('S')` returns seconds since midnight as a whole number.
`TIME('M')` returns minutes since midnight.

```rexx
seconds = TIME('S')
minutes = TIME('M')
```

Since `minutes` is truncated (it's a whole number of minutes),
`seconds` will always be >= `minutes * 60`.

Replace the `???` placeholders with the appropriate `TIME()` calls.
