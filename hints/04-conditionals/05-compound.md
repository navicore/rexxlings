# Hint: Compound Conditions — & and |

REXX uses `&` for logical AND and `|` for logical OR:

```rexx
/* AND: both conditions must be true */
IF x > 0 & x < 100 THEN SAY 'in range'

/* OR: at least one condition must be true */
IF color = 'red' | color = 'blue' THEN SAY 'primary'
```

You can also negate with `\`:

```rexx
IF \found THEN SAY 'not found'
```

Replace each `???` with the correct compound condition:

1. `num >= 10 & num <= 20` checks if num is between 10 and 20
2. `day = 'Saturday' | day = 'Sunday'` checks for weekend
3. `height >= 120 & age >= 10` checks both requirements
