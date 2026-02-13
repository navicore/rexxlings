# Hint: PROCEDURE — Isolating Subroutine Variables

Without `PROCEDURE`, all variables inside a subroutine are shared
with the caller:

```rexx
x = 'hello'
CALL doStuff
SAY x       /* might print something unexpected! */

doStuff:
  x = 'goodbye'   /* overwrites the caller's x */
  RETURN
```

Adding `PROCEDURE` after the label creates a new, isolated scope:

```rexx
x = 'hello'
CALL doStuff
SAY x       /* prints: hello */

doStuff: PROCEDURE
  x = 'goodbye'   /* this x is local only */
  RETURN
```

The fix is simple: change `calculate:` to `calculate: PROCEDURE`.
