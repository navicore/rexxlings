# Hint: DATE() — Getting the Current Date

The `DATE()` function accepts an option letter to control the format:

| Option  | Format            | Example        |
|---------|-------------------|----------------|
| `'N'`   | Normal (default)  | `11 Feb 2026`  |
| `'S'`   | Sorted            | `20260211`     |
| `'D'`   | Days into year    | `42`           |
| `'W'`   | Weekday name      | `Wednesday`    |

For the sorted format:
```rexx
sorted_date = DATE('S')
```

To get the length of a string:
```rexx
date_len = LENGTH(sorted_date)
```

Replace the first `???` with `DATE('S')` and the second with
`LENGTH(sorted_date)`.
