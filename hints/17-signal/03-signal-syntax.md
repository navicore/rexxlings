# Hint: SIGNAL ON SYNTAX — Catching Runtime Errors

`SIGNAL ON SYNTAX NAME label` tells REXX to jump to `label` whenever
a syntax/runtime error occurs, instead of terminating:

```rexx
SIGNAL ON SYNTAX NAME error_handler
x = 1 / 0    /* division by zero! */
SAY 'This line is skipped'
EXIT

error_handler:
  SAY 'Error caught!'
  EXIT
```

For this exercise, you need two things:

1. The SIGNAL ON SYNTAX statement:
```rexx
SIGNAL ON SYNTAX NAME syntax_error
```

2. The handler label:
```rexx
syntax_error:
  answer = 'caught'
```

Replace the first `???` with the SIGNAL ON SYNTAX statement, and
the second `???` with the handler label (just the label line, like
`syntax_error:` — the `answer = 'caught'` line is already there).
