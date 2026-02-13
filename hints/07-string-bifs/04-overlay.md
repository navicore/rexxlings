# Hint: OVERLAY — Replace Characters at a Position

`OVERLAY` writes new characters on top of an existing string:

```rexx
OVERLAY(new, target, position)
```

- `new` — the characters to write
- `target` — the string to write onto
- `position` — where to start writing (1-based)

```rexx
OVERLAY('XX', 'abcdef', 3)   /* => 'abXXef' */
```

The new characters replace the same number of characters starting at
`position`. The rest of the string stays the same.

Build the date step by step: first overlay the year, then the month
on that result, then the day on that result.
