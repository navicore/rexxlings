# Hint: DATATYPE() and VERIFY() — Type Checking

## DATATYPE

With one argument, `DATATYPE(string)` returns `'NUM'` or `'CHAR'`:

```rexx
SAY DATATYPE('42')      /* prints: NUM */
SAY DATATYPE('hello')   /* prints: CHAR */
```

With two arguments, `DATATYPE(string, type)` returns `1` or `0`:

```rexx
SAY DATATYPE('FF', 'X')     /* 1 — valid hex */
SAY DATATYPE('hello', 'A')  /* 1 — all alphabetic */
SAY DATATYPE('42', 'N')     /* 1 — valid number */
SAY DATATYPE('42', 'A')     /* 0 — not purely alphabetic */
```

Common type codes: `N` (number), `A` (alphabetic), `X` (hex), `W` (whole number).

## VERIFY

`VERIFY(string, reference)` checks if every character in `string` appears
in `reference`. Returns `0` if all match, or the position of the first
character that does not appear in `reference`:

```rexx
SAY VERIFY('123', '0123456789')    /* 0 — all are digits */
SAY VERIFY('12x3', '0123456789')   /* 3 — 'x' at position 3 */
```

Replace each `???` with the appropriate function call.
