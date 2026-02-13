/* Exercise: Recursion — Fibonacci
 *
 * The Fibonacci sequence is a classic recursion exercise:
 *
 *   fib(0) = 0
 *   fib(1) = 1
 *   fib(n) = fib(n-1) + fib(n-2)   for n > 1
 *
 * Sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
 *
 * Your task: Implement a recursive `fib` function that returns
 * the nth Fibonacci number.
 */

/* I AM NOT DONE */

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

/* Write your fib subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
