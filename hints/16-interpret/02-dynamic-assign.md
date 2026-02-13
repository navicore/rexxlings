# Hint: Dynamic Variable Assignment with INTERPRET

You can build an assignment statement as a string and INTERPRET it:

```rexx
varname = 'color'
INTERPRET varname '= "blue"'
SAY color    /* prints: blue */
```

Here, `varname '= "blue"'` concatenates to form `color = "blue"`,
which INTERPRET then executes.

For numeric values, you do not need quotes around the value:

```rexx
varname = 'answer'
INTERPRET varname '= 42'
SAY answer    /* prints: 42 */
```

For string values, use quotes inside the interpreted string:

```rexx
varname = 'language'
INTERPRET varname "= 'REXX'"
SAY language    /* prints: REXX */
```

Replace each `???` with the appropriate `INTERPRET` statement.
