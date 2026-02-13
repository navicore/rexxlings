# Hint: PARSE SOURCE — Getting Interpreter Information

`PARSE SOURCE` gives you information about the running environment:

```rexx
PARSE SOURCE sys invocation filename
SAY sys          /* e.g., 'UNIX' or 'WindowsNT' */
SAY invocation   /* e.g., 'COMMAND' */
SAY filename     /* the path to this script */
```

To check that `sys` is non-empty, you can compare its length:

```rexx
has_source = (LENGTH(sys) > 0)
```

Or compare it to the empty string:

```rexx
has_source = (sys \= '')
```

Replace the first `???` with a `PARSE SOURCE` statement that captures
at least the system name, and the second `???` with a check that the
result is non-empty.
