# Hint: TIME() — Getting the Current Time

`TIME()` with no argument (or `'N'`) returns the time in `HH:MM:SS` format:

```rexx
current_time = TIME()
SAY current_time   /* e.g. 14:30:45 */
```

The result is always 8 characters long with colons at positions 3 and 6.

To get the length:
```rexx
time_len = LENGTH(current_time)
```

Replace the first `???` with `TIME()` and the second with
`LENGTH(current_time)`.
