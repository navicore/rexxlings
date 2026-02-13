# Hint: Simple DO/END Block

Every `DO` must have a matching `END`. Without it, REXX will
report a syntax error:

```rexx
/* Wrong: missing END */
DO
  SAY 'hello'
  SAY 'world'

/* Right: properly closed */
DO
  SAY 'hello'
  SAY 'world'
END
```

Look at the code and add the missing `END` keyword to close the
`DO` block.
