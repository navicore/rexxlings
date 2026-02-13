# Hint: DO with Computed Bounds

In REXX, `DO i = start TO finish BY step` accepts variables or
expressions for any of the bounds:

```rexx
start = 5
finish = 20
step = 5
DO i = start TO finish BY step
  SAY i    /* prints 5, 10, 15, 20 */
END
```

The test expects the result string `'5,10,15,20'`, which means the
loop should produce the values 5, 10, 15, and 20.

Think about what `start`, `finish`, and `step` values would produce
this sequence:
- Starts at 5
- Goes up to 20
- Steps by 5

Replace each `???` with the appropriate number.
