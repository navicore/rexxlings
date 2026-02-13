# Hint: Basic INTERPRET — Execute Strings as Code

`INTERPRET` takes a string and runs it as if it were REXX source code:

```rexx
code = 'x = 10 + 20'
INTERPRET code
SAY x    /* prints: 30 */
```

The string can contain any valid REXX statement. Variables set inside
the interpreted code are available afterwards (they share the same scope).

For this exercise, you need to build strings that, when interpreted,
assign the expected values:

```rexx
code1 = 'result1 = 2 + 3'
INTERPRET code1
/* result1 is now 5 */

code2 = "result2 = 'HELLO'"
INTERPRET code2
/* result2 is now 'HELLO' */
```

Note: when the interpreted code contains a string literal, you need
to use different quote types for the outer and inner strings. Use
double quotes for the outer string and single quotes inside (or
vice versa).
