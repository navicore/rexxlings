# Hint: Palindrome Checker

A palindrome reads the same forwards and backwards. To check:

1. **Uppercase** the input for case-insensitive comparison:
   ```rexx
   upper_text = TRANSLATE(text)
   ```

2. **Reverse** it:
   ```rexx
   REVERSE(upper_text)
   ```

3. **Compare:**
   ```rexx
   IF upper_text = REVERSE(upper_text) THEN RETURN 1
   RETURN 0
   ```

Your subroutine should look like:
```rexx
isPalindrome: PROCEDURE
  PARSE ARG text
  upper_text = TRANSLATE(text)
  IF upper_text = REVERSE(upper_text) THEN
    RETURN 1
  RETURN 0
```

`TRANSLATE()` with no extra arguments converts to uppercase.
`REVERSE()` reverses a string character by character.
