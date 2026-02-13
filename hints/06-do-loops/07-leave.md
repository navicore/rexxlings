# Hint: LEAVE — Exit a Loop Early

`LEAVE` exits the loop immediately:

```rexx
DO i = 1 TO 1000
  IF i * i > 100 THEN LEAVE
END
/* i is 11 (11*11 = 121 > 100) */
```

After `LEAVE`, the control variable `i` keeps its current value.

In this exercise, you are looking for the first `i` where `i * 7 > 50`:
- i=7: 49 (not > 50)
- i=8: 56 (> 50, LEAVE!)

Replace the first `???` with `multiple` to save the found value,
and the second `???` with `LEAVE` to exit the loop.
