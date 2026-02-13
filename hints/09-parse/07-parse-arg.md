# Hint: PARSE ARG — Parse Subroutine Arguments

When you `CALL` a subroutine with arguments separated by commas,
`PARSE ARG` receives them:

```rexx
CALL greet 'Alice', 30

greet: PROCEDURE
  PARSE ARG name, age
  SAY name 'is' age 'years old'
  RETURN
```

The comma in `PARSE ARG` separates argument groups, matching the
commas in the `CALL`.

You can combine `PARSE ARG` with literal patterns:

```rexx
CALL process 'user@host.com'

process: PROCEDURE
  PARSE ARG user '@' domain
  /* user = 'user', domain = 'host.com' */
  RETURN domain
```

For `format_name`:
```rexx
PARSE ARG first, last
RETURN last || ', ' || first
```
(Or use: `RETURN last',' first`)

For `get_domain`:
```rexx
PARSE ARG . '@' domain
RETURN domain
```

For `swap`:
```rexx
PARSE ARG a, b
RETURN b a
```

Remember to use `RETURN` to send a value back. The caller receives
it in the special `RESULT` variable.
