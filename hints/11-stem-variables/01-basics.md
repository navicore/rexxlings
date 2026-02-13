# Hint: Stem Basics — Array-Like Variables

Stem variables use a dot to create indexed (array-like) variables:

```rexx
color.1 = 'red'
color.2 = 'green'
color.3 = 'blue'
color.0 = 3        /* convention: .0 holds the count */
```

To iterate over them:

```rexx
DO i = 1 TO color.0
  SAY color.i
END
```

Note that `color.i` uses the *value* of `i` as the tail. When
`i = 2`, `color.i` resolves to `color.2`.

For this exercise:
1. Set `fruit.1`, `fruit.2`, and `fruit.3` to the three fruits
2. Set `fruit.0` to `3`
3. The iteration loop is already provided for you
