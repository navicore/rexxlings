# Hint: Common Loop Patterns

## Pattern 1: Accumulator

Start with an initial value and update it each iteration:

```rexx
product = 1
DO i = 1 TO 5
  product = product * i
END
/* product is now 120 (1*2*3*4*5) */
```

Note: for multiplication, start at 1 (not 0).

## Pattern 2: Search with LEAVE

Use `LEAVE` to exit a loop early when you find what you want:

```rexx
DO i = 51 TO 100
  IF i // 7 = 0 THEN DO
    found = i
    LEAVE
  END
END
```

The `//` operator is the REXX remainder (modulo) operator.
`i // 7 = 0` means "i is divisible by 7".

## Pattern 3: Filter/Count

Count items matching a condition:

```rexx
even_count = 0
DO i = 1 TO 20
  IF i // 2 = 0 THEN even_count = even_count + 1
END
```

Replace each `???` with the appropriate code for each pattern.
