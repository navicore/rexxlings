# Hint: DO with BY — Step Value

The `BY` clause controls how much the control variable changes
each iteration:

```rexx
DO i = 0 TO 10 BY 2
  SAY i    /* prints 0, 2, 4, 6, 8, 10 */
END
```

Without `BY`, the default step is 1.

To step by 5 from 0 to 20, you get the values: 0, 5, 10, 15, 20.
That is 5 iterations.

Replace `???` with `5` to set the step value.
