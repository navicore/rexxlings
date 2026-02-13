# Hint: CONDITION() — Querying Error Information

Inside a signal trap handler, `CONDITION()` returns information about
the error that was caught:

```rexx
SIGNAL ON SYNTAX NAME err_handler
x = 1 / 0
EXIT

err_handler:
  SAY CONDITION('C')   /* prints: SYNTAX */
  SAY CONDITION('D')   /* prints: error description */
```

Common `CONDITION()` options:
- `'C'` (Condition) — the condition name: `'SYNTAX'`, `'NOVALUE'`, etc.
- `'D'` (Description) — a text description of the error

For this exercise, you need:

1. Set up the trap:
```rexx
SIGNAL ON SYNTAX NAME syntax_handler
```

2. The handler label:
```rexx
syntax_handler:
```

3. Query condition info:
```rexx
cond_name = CONDITION('C')
cond_desc = CONDITION('D')
```

Replace each `???` with the appropriate code.
