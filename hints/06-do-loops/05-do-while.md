# Hint: DO WHILE — Condition-Checked Loop

`DO WHILE` checks the condition before each iteration:

```rexx
x = 100
DO WHILE x > 1
  x = x / 10
END
/* x is now 1 (100 -> 10 -> 1, then 1 > 1 is false) */
```

In this exercise:
- Start with `num = 1600`
- Keep halving while `num >= 10`
- 1600 -> 800 -> 400 -> 200 -> 100 -> 50 -> 25 -> 12.5 -> 6.25
- 6.25 < 10 so the loop stops (8 steps)

Replace the first `???` with `num >= 10` and the second with
`steps + 1`.
