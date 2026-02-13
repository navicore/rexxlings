# Hint: DO UNTIL — Loop Until Condition Met

`DO UNTIL` runs the loop body first, then checks the condition.
It stops when the condition becomes **true**:

```rexx
n = 0
DO UNTIL n >= 5
  n = n + 1
END
/* n is now 5 */
```

This is the opposite of `DO WHILE`:
- `DO WHILE cond` = keep going while true, check before
- `DO UNTIL cond` = keep going until true, check after

In this exercise, each item weighs 7. After 7 items the total is
49, which is still < 50. After 8 items the total is 56, which is
>= 50, so the loop stops.

Replace the first `???` with `totalWeight >= 50` and the second
with `itemCount + 1`.
