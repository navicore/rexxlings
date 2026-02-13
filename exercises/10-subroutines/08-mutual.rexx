/* Exercise: Mutual Recursion — isEven / isOdd
 *
 * Two functions can call each other! This is called mutual recursion.
 *
 * A playful way to test if a number is even or odd:
 *
 *   isEven(0) = 1 (true)
 *   isEven(n) = isOdd(n - 1)
 *
 *   isOdd(0) = 0 (false)
 *   isOdd(n) = isEven(n - 1)
 *
 * For example: isEven(4) -> isOdd(3) -> isEven(2) -> isOdd(1) -> isEven(0) -> 1
 *
 * Your task: Implement both `isEven` and `isOdd` using mutual recursion.
 * Return 1 for true and 0 for false.
 */

/* I AM NOT DONE */

e0 = isEven(0)
e4 = isEven(4)
e7 = isEven(7)
o3 = isOdd(3)
o6 = isOdd(6)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal e0, 1, 'isEven(0) should be 1'
CALL assert_equal e4, 1, 'isEven(4) should be 1'
CALL assert_equal e7, 0, 'isEven(7) should be 0'
CALL assert_equal o3, 1, 'isOdd(3) should be 1'
CALL assert_equal o6, 0, 'isOdd(6) should be 0'
EXIT 0

/* Write your isEven and isOdd subroutines here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
