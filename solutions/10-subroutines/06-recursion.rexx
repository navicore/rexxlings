/* Exercise: Recursion — Factorial */

f0 = factorial(0)
f1 = factorial(1)
f5 = factorial(5)
f7 = factorial(7)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal f0, 1, 'factorial(0) should be 1'
CALL assert_equal f1, 1, 'factorial(1) should be 1'
CALL assert_equal f5, 120, 'factorial(5) should be 120'
CALL assert_equal f7, 5040, 'factorial(7) should be 5040'
EXIT 0

factorial: PROCEDURE
  PARSE ARG n
  IF n <= 1 THEN RETURN 1
  RETURN n * factorial(n - 1)

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
