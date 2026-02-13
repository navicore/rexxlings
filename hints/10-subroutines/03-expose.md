# Hint: PROCEDURE EXPOSE — Sharing Select Variables

`PROCEDURE` hides everything. `PROCEDURE EXPOSE` lets you punch
holes for specific variables:

```rexx
total = 0

CALL addToTotal 5
CALL addToTotal 3
SAY total       /* prints: 8 */

addToTotal: PROCEDURE EXPOSE total
  PARSE ARG amount
  total = total + amount
  RETURN
```

You can expose multiple variables by listing them separated by spaces:

```rexx
myFunc: PROCEDURE EXPOSE var1 var2 var3
```

In this exercise, change `PROCEDURE` to `PROCEDURE EXPOSE counter`
so the subroutine can read and modify the caller's `counter`.
