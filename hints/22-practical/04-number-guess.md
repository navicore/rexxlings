# Hint: Number Guessing — Binary Search

Binary search halves the range with each guess:

1. **Calculate midpoint:**
   ```rexx
   guess = (low + high) % 2
   ```
   The `%` operator is integer division in REXX.

2. **Compare and adjust:**
   ```rexx
   IF guess = target THEN DO
     found = 1
     LEAVE
   END
   ELSE IF guess < target THEN
     low = guess + 1
   ELSE
     high = guess - 1
   ```

   - If the guess matches, set `found = 1` and `LEAVE` the loop
   - If the guess is too low, move `low` up
   - If the guess is too high, move `high` down

Replace the first `???` with the midpoint calculation and the second
with the comparison logic. Use `LEAVE` to exit the loop when found.
