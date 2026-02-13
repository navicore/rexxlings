# Hint: CHANGESTR and COUNTSTR — Find and Replace

**COUNTSTR** counts non-overlapping occurrences:

```rexx
COUNTSTR('is', 'This is bliss')   /* => 3 */
```

Note: `COUNTSTR` finds 'is' inside 'This', in 'is', and in 'bliss'.

**CHANGESTR** replaces all occurrences:

```rexx
CHANGESTR(needle, haystack, replacement)
```

```rexx
CHANGESTR('old', 'old is old', 'new')   /* => 'new is new' */
```

Remember the argument order:
- `COUNTSTR`: needle first, then haystack
- `CHANGESTR`: needle first, then haystack, then replacement
