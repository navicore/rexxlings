# Hint: Caesar Cipher

Here is a step-by-step approach:

1. **Build the alphabet:**
   ```rexx
   alphabet = XRANGE('A', 'Z')
   ```

2. **Loop through each character:**
   ```rexx
   DO i = 1 TO LENGTH(text)
     ch = SUBSTR(text, i, 1)
   ```

3. **Find position and shift:**
   ```rexx
   p = POS(ch, alphabet)
   IF p > 0 THEN DO
     newpos = ((p - 1 + shift) // 26) + 1
     answer = answer || SUBSTR(alphabet, newpos, 1)
   END
   ELSE
     answer = answer || ch
   ```

The `//` operator is REXX's modulo (remainder). We subtract 1 to make
it 0-based, add the shift, take modulo 26, then add 1 to go back to
1-based indexing.

Your subroutine should use `PROCEDURE` and `PARSE ARG text, shift`.
Don't forget to `RETURN result`.
