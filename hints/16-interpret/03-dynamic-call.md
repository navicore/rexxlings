# Hint: Dynamic Function Calls with INTERPRET

You can build a complete function call as a string and INTERPRET it:

```rexx
INTERPRET "result1 = REVERSE('hello')"
SAY result1    /* prints: olleh */
```

Or you can build it from parts:

```rexx
func = 'REVERSE'
arg = 'hello'
INTERPRET 'result1 =' func "('" || arg || "')"
```

For this exercise, the simplest approach is to write the full
assignment as a string:

```rexx
INTERPRET "result1 = REVERSE('hello')"
INTERPRET "result2 = LENGTH('REXX programming')"
INTERPRET "result3 = SUBSTR('abcdef', 3, 2)"
```

Remember to use different quote types for the outer string and
the inner function arguments.
