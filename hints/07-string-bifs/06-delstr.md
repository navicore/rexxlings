# Hint: DELSTR — Delete a Substring

`DELSTR` removes characters from a string by position:

```rexx
DELSTR(string, start, length)   /* remove 'length' chars from 'start' */
DELSTR(string, start)           /* remove from 'start' to end         */
```

Positions are 1-based. Count carefully:

```
H e l l o   C r u e l     W o r l d
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
```

- `' Cruel'` starts at position 6 and is 6 characters long (space + Cruel)
- To remove just the first character, start at 1 with length 1

Remember: if you omit the length, everything from start onward is
deleted.
