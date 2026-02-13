# Hint: FORMAT() — Formatting Numbers

`FORMAT(number, before, after)` formats a number with a specific number
of character positions before and after the decimal point:

```rexx
SAY FORMAT(3.5, 3, 2)     /* prints: "  3.50" */
SAY FORMAT(42, 3, 3)      /* prints: " 42.000" */
SAY FORMAT(7.1, 2, 2)     /* prints: " 7.10" */
```

- `before` is the number of character positions for the integer part
  (right-justified, padded with spaces on the left)
- `after` is the number of decimal places (zero-padded on the right)

You can use `STRIP()` to remove leading/trailing spaces from a result:

```rexx
SAY STRIP(FORMAT(7.1, 5, 2))   /* prints: "7.10" */
```

Replace each `???` with the appropriate `FORMAT()` call. Check the
test assertions to see the exact expected output.
