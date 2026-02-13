/* Exercise: Number Guessing — Binary Search
 *
 * Simulate a number guessing game using binary search.
 * The target number is between 1 and 100. Instead of interactive
 * input, we use a binary search algorithm:
 *
 *   low = 1; high = 100
 *   guess = (low + high) % 2
 *   If guess < target: low = guess + 1
 *   If guess > target: high = guess - 1
 *   If guess = target: found!
 *
 * Your task: Implement binary search to find the target number.
 * Count how many guesses it takes. Binary search should find any
 * number from 1-100 in at most 7 guesses.
 */

/* I AM NOT DONE */

target = 73
low = 1
high = 100
guesses = 0
found = 0

DO WHILE low <= high
  /* Calculate the midpoint guess */
  guess = ???

  guesses = guesses + 1

  /* Compare guess to target and adjust range */
  ???
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal found, 1, 'Should find the target number'
CALL assert_equal guess, 73, 'Should guess 73'
CALL assert_true guesses <= 7, 'Binary search should take at most 7 guesses for 1-100'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
