# Hint: Multi-Dimensional Stems — Matrices

You can use multiple dot-separated tails to create matrix-like
structures:

```rexx
grid.1.1 = 'X'
grid.1.2 = 'O'
grid.2.1 = 'O'
grid.2.2 = 'X'
```

With loop variables, `grid.r.c` resolves the values of `r` and `c`:

```rexx
DO r = 1 TO 2
  DO c = 1 TO 2
    SAY 'grid.' || r || '.' || c '=' grid.r.c
  END
END
```

For the identity matrix:
1. Start with `m. = 0` (all elements default to 0)
2. Loop over rows and columns
3. When row equals column (`r = c`), set that element to 1

```rexx
DO r = 1 TO size
  DO c = 1 TO size
    IF r = c THEN m.r.c = 1
  END
END
```

You only need to set the diagonal; the default handles everything else.
