# Hint: STRIP — Remove Leading and Trailing Characters

`STRIP` takes up to three arguments:

```rexx
STRIP(string)              /* strips blanks from both sides */
STRIP(string, 'L')         /* strips leading blanks only   */
STRIP(string, 'T')         /* strips trailing blanks only  */
STRIP(string, 'B', '*')   /* strips '*' from both sides   */
```

The option letters:
| Option | Meaning  |
|--------|----------|
| `'B'`  | Both ends (default) |
| `'L'`  | Leading only |
| `'T'`  | Trailing only |

The third argument specifies the character to strip. If omitted,
blanks are stripped.

For each variable, replace the right-hand side with a call to `STRIP`
using the correct option and, when needed, the character argument.
