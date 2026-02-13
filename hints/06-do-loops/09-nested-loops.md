# Hint: Nested DO Loops

Nested loops run the inner loop completely for each step of the
outer loop:

```rexx
DO i = 1 TO 2
  DO j = 1 TO 3
    SAY i j
  END
END
/* Output: 1 1, 1 2, 1 3, 2 1, 2 2, 2 3 */
```

Total iterations = outer count * inner count. So `DO i = 1 TO 3`
with `DO j = 1 TO 4` gives 3 * 4 = 12 iterations.

The sum of all products i*j for i=1..3, j=1..4:
- i=1: 1+2+3+4 = 10
- i=2: 2+4+6+8 = 20
- i=3: 3+6+9+12 = 30
- Total = 10 + 20 + 30 = 60

The last product computed is 3*4 = 12.

Replace each `???` with the correct upper bound: `3` and `4`.
