# Hint: OTHERWISE — The Default Case

Without `OTHERWISE`, a `SELECT` that matches no `WHEN` clause
will cause a runtime error. Always include `OTHERWISE` when there
is a possibility that no condition matches:

```rexx
SELECT
  WHEN x = 1 THEN SAY 'one'
  WHEN x = 2 THEN SAY 'two'
  OTHERWISE SAY 'something else'
END
```

If you want the default case to do nothing, use `NOP`:

```rexx
OTHERWISE NOP
```

Add an `OTHERWISE` line before each `END` to handle the unmatched
cases. Set the variable to the value expected by the tests.
