# Hint: RANDOM() — Generating Random Numbers

`RANDOM(min, max)` returns a random whole number in the range [min, max]:

```rexx
r = RANDOM(1, 10)   /* r is a number from 1 to 10 */
```

Since the result is unpredictable, you need to check the range.
Use a comparison to produce a flag (1 for true, 0 for false):

```rexx
r = RANDOM(1, 10)
in_range = (r >= 1) & (r <= 10)   /* 1 if in range, 0 if not */
```

In REXX, comparison operators return `1` (true) or `0` (false), and
`&` is the logical AND operator.

Replace each `???`:
1. Call `RANDOM()` with the right min and max arguments
2. Set the `_in_range` variable to a comparison checking the bounds
