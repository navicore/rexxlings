/* Exercise: Recursion — Fibonacci */

f0 = fib(0)
f1 = fib(1)
f6 = fib(6)
f10 = fib(10)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal f0, 0, 'fib(0) should be 0'
CALL assert_equal f1, 1, 'fib(1) should be 1'
CALL assert_equal f6, 8, 'fib(6) should be 8'
CALL assert_equal f10, 55, 'fib(10) should be 55'
EXIT 0

fib: PROCEDURE
  PARSE ARG n
  IF n <= 0 THEN RETURN 0
  IF n = 1 THEN RETURN 1
  RETURN fib(n - 1) + fib(n - 2)

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
