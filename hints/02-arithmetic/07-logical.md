# Hint: Logical Operators

Work through each expression step by step.

**AND (`&`)** — both must be true:
- `1 & 1` = `1` (both true)
- `1 & 0` = `0` (one is false)
- `0 & 0` = `0` (both false)

**OR (`|`)** — at least one must be true:
- `1 | 1` = `1`
- `1 | 0` = `1`
- `0 | 0` = `0` (neither is true)

**NOT (`\`)** — flips the value:
- `\1` = `0`
- `\0` = `1`

For the combined expressions, evaluate each comparison first,
then apply the logical operator:

- `(5 > 3) & (10 > 7)` = `1 & 1` = `1`
- `(5 > 3) & (10 < 7)` = `1 & 0` = `0`
- `(5 > 3) | (10 < 7)` = `1 | 0` = `1`
