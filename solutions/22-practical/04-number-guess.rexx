/* Exercise: Number Guessing — Binary Search */

target = 73
low = 1
high = 100
guesses = 0
found = 0

DO WHILE low <= high
  /* Calculate the midpoint guess */
  guess = (low + high) % 2

  guesses = guesses + 1

  /* Compare guess to target and adjust range */
  IF guess = target THEN DO
    found = 1
    LEAVE
  END
  ELSE IF guess < target THEN
    low = guess + 1
  ELSE
    high = guess - 1
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
