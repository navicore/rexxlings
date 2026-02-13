/* Exercise: PARSE ARG — Multiple Arguments
 *
 * Subroutine arguments are separated by commas in REXX:
 *
 *   CALL mySub arg1, arg2, arg3
 *
 * Inside the subroutine, use PARSE ARG to capture them:
 *
 *   mySub: PROCEDURE
 *     PARSE ARG first, second, third
 *     ...
 *
 * Note: ARG alone (without PARSE) uppercases string arguments.
 * PARSE ARG preserves the original case.
 *
 * Your task: Write a subroutine called `add` that takes two
 * numeric arguments and returns their sum.
 */

/* I AM NOT DONE */

CALL add 10, 20
sum1 = RESULT

CALL add 3, 7
sum2 = RESULT

CALL add 100, -50
sum3 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum1, 30, '10 + 20 should be 30'
CALL assert_equal sum2, 10, '3 + 7 should be 10'
CALL assert_equal sum3, 50, '100 + (-50) should be 50'
EXIT 0

/* Write your add subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
