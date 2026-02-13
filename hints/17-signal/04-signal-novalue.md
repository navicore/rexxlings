# Hint: SIGNAL ON NOVALUE — Catching Uninitialized Variables

`SIGNAL ON NOVALUE NAME label` traps any use of a variable that has
not been assigned a value:

```rexx
SIGNAL ON NOVALUE NAME novalue_handler
x = undefined_variable    /* triggers trap! */
EXIT

novalue_handler:
  SAY 'Caught use of uninitialized variable!'
```

You need three things:

1. The SIGNAL ON NOVALUE statement:
```rexx
SIGNAL ON NOVALUE NAME novalue_handler
```

2. A reference to an uninitialized variable (any name that has not
been assigned will do):
```rexx
x = never_set_this_variable
```

3. The handler label:
```rexx
novalue_handler:
```

Replace each `???` with the appropriate code.
