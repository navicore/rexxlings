# Hint: FizzBuzz with SELECT

The key to FizzBuzz is checking the **most specific** condition
first. Since SELECT executes only the first matching WHEN, you
must check "divisible by both 3 and 5" before checking 3 or 5
individually.

The remainder operator in REXX is `//`:

```rexx
15 // 3   /* result: 0 (divisible) */
15 // 5   /* result: 0 (divisible) */
7 // 3    /* result: 1 (not divisible) */
```

Use `&` to combine two conditions:

```rexx
WHEN i // 3 = 0 & i // 5 = 0 THEN word = 'FizzBuzz'
WHEN i // 3 = 0 THEN word = 'Fizz'
WHEN i // 5 = 0 THEN word = 'Buzz'
```

Replace each `???` with the correct condition using `//` and `=`.
