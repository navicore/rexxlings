# Hint: DATE Formats — Weekday and More

The `DATE()` function supports several format options:

```rexx
SAY DATE('W')   /* e.g. Wednesday */
SAY DATE('M')   /* e.g. February  */
SAY DATE('D')   /* e.g. 42 (day of year) */
```

For the weekday:
```rexx
weekday = DATE('W')
```

For the month:
```rexx
month = DATE('M')
```

Both return full English names (not abbreviated). The shortest weekday
is "Monday" (6 chars) and the shortest month is "May" (3 chars).

Replace the first `???` with `DATE('W')` and the second with `DATE('M')`.
