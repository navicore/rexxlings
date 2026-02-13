# Hint: Operator Precedence

Without parentheses, REXX evaluates in this order:
1. `**` (power) first
2. `*`, `/`, `%`, `//` next
3. `+`, `-` last

To change the order, wrap the part you want computed first in
parentheses:

```rexx
2 + 3 * 4         /* = 14  (3*4 first, then +2) */
(2 + 3) * 4       /* = 20  (2+3 first, then *4) */
```

For `result1`: wrap `2 + 3` in parentheses.

For `result2`: wrap `10 - 5` in parentheses so the subtraction
happens before the multiplication.

For `result3`: you need `(3 + 7) ** 2` — add first, then power.

For `result4`: division happens before subtraction by default,
so `100 - 8 / 2 + 1` would already work. But parentheses make
it clearer.
