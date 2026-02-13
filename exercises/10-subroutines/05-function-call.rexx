/* Exercise: Function-Call Syntax
 *
 * In REXX, you can also call a subroutine using function syntax:
 *
 *   answer = myFunc(arg1, arg2)
 *
 * This is equivalent to:
 *
 *   CALL myFunc arg1, arg2
 *   answer = RESULT
 *
 * Function-call syntax is more concise and can be used directly
 * in expressions:
 *
 *   SAY 'Double of 5 is' double(5)
 *
 * Your task: Write a subroutine called `double` that returns
 * its argument multiplied by 2. Then write `square` that returns
 * its argument multiplied by itself.
 */

/* I AM NOT DONE */

d1 = double(5)
d2 = double(12)
s1 = square(4)
s2 = square(7)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal d1, 10, 'double(5) should be 10'
CALL assert_equal d2, 24, 'double(12) should be 24'
CALL assert_equal s1, 16, 'square(4) should be 16'
CALL assert_equal s2, 49, 'square(7) should be 49'
EXIT 0

/* Write your double and square subroutines here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
