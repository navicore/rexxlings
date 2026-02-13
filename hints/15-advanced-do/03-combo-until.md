# Hint: DO i = start TO end UNTIL condition

`UNTIL` checks the condition AFTER each iteration and stops when the
condition becomes TRUE:

```rexx
n = 1
DO i = 1 TO 100 UNTIL n > 50
  n = n * 2
END
/* Loop runs until n exceeds 50 */
```

Key difference from WHILE:
- `WHILE cond` = "keep going while this is true" (checked before)
- `UNTIL cond` = "keep going until this becomes true" (checked after)

For this exercise, you are doubling `power` each iteration:
- Start: power = 1
- After i=1: power = 2
- After i=2: power = 4
- ...
- After i=7: power = 128

You want to stop when `power` exceeds 100. The UNTIL condition
should be `power > 100`.

Replace `???` with the UNTIL condition.
