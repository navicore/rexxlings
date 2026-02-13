# Hint: Nested IF — Classifying a Number

You can nest IF statements to handle three or more cases:

```rexx
IF x < 0 THEN
  answer = 'negative'
ELSE
  IF x = 0 THEN
    answer = 'zero'
  ELSE
    answer = 'positive'
```

The first `IF` has already been partially written for `num1`.
Replace each `???` with the correct string.

For `num2` and `num3`, write similar nested IF structures to
classify each number as `'negative'`, `'zero'`, or `'positive'`.
