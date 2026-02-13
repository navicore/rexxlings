/* Exercise: Integer Division and Remainder
 *
 * REXX has special operators for integer arithmetic:
 *
 *   %   Integer division (truncates the decimal part)
 *   //  Remainder (like modulo in other languages)
 *
 * Examples:
 *   17 % 5    -->  3    (17 / 5 = 3.4, truncated to 3)
 *   17 // 5   -->  2    (17 = 5*3 + 2, remainder is 2)
 *
 * Your task: Use % and // to calculate the expected values.
 */

/* I AM NOT DONE */

/* How many whole groups of 7 fit into 50? */
groups = ???

/* What is left over after dividing 50 by 7? */
leftover = ???

/* Given 125 minutes, how many whole hours is that? */
minutes = 125
hours = ???

/* And how many minutes remain after the whole hours? */
remaining_minutes = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal groups, '7', 'groups should be 7'
CALL assert_equal leftover, '1', 'leftover should be 1'
CALL assert_equal hours, '2', 'hours should be 2'
CALL assert_equal remaining_minutes, '5', 'remaining_minutes should be 5'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
