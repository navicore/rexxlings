# Hint: WORDINDEX and WORDLENGTH — Word Positions and Lengths

**WORDINDEX** tells you the character position of the first character
of a word:

```rexx
text = 'Alice Bob Charlotte'
/*      1234567890...        */
WORDINDEX(text, 1)   /* => 1  (Alice starts at char 1) */
WORDINDEX(text, 2)   /* => 7  (Bob starts at char 7)   */
```

**WORDLENGTH** tells you how many characters are in a word:

```rexx
WORDLENGTH(text, 3)   /* => 9  (Charlotte has 9 chars) */
```

These are useful when you need to locate and measure words within a
string for further processing with SUBSTR, OVERLAY, etc.
