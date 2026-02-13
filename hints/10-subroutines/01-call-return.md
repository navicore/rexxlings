# Hint: CALL and RETURN — Your First Subroutine

A subroutine in REXX starts with a **label** (a name followed by a colon):

```rexx
myLabel:
  /* instructions here */
  RETURN someValue
```

You call it with `CALL`:

```rexx
CALL myLabel arg1
```

After the call, the returned value is in the special variable `RESULT`:

```rexx
CALL myLabel 'Alice'
SAY RESULT
```

Inside the subroutine, use `PARSE ARG` to pick up arguments:

```rexx
greet:
  PARSE ARG name
  RETURN 'Hello,' name'!'
```

Note how REXX concatenation works: `'Hello,' name'!'` puts a space
between `Hello,` and `name`, then abuts `!` directly (no space) because
there is no blank between `name` and the quote.

Replace each `???` with the appropriate CALL statement or subroutine
definition.
