# Hint: COMPARE and ABBREV — String Comparison

## COMPARE

`COMPARE(s1, s2)` returns:
- `0` if the strings are identical
- The position of the first difference otherwise

```rexx
COMPARE('abc', 'abc')   /* => 0 */
COMPARE('abc', 'axc')   /* => 2 (differ at position 2) */
```

Think about 'hello' vs 'help': at which position do they first differ?

## ABBREV

`ABBREV(information, info, length)` returns `1` (true) or `0` (false):

```rexx
ABBREV('INSTALL', 'INST')      /* => 1 (INST is a prefix) */
ABBREV('INSTALL', 'IN', 3)     /* => 0 (IN is only 2 chars, need 3) */
ABBREV('INSTALL', 'INST', 4)   /* => 1 (INST is 4 chars, meets minimum) */
```

The third argument sets the *minimum* number of characters required
for the abbreviation to be accepted.
