/* Exercise: Comparison Operators
 *
 * REXX comparison operators return 1 for true and 0 for false.
 *
 *   =    Equal
 *   \=   Not equal
 *   <    Less than
 *   >    Greater than
 *   <=   Less than or equal
 *   >=   Greater than or equal
 *
 * Examples:
 *   answer = (5 = 5)      result is '1' (true)
 *   answer = (5 = 3)      result is '0' (false)
 *   answer = (3 < 5)      result is '1' (true)
 *
 * Your task: Predict the result of each comparison.
 */

/* I AM NOT DONE */

/* Replace each ??? with '1' (true) or '0' (false) */

test1 = (10 = 10)
test2 = (10 \= 5)
test3 = (3 > 7)
test4 = (3 < 7)
test5 = (5 >= 5)
test6 = (4 <= 3)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal test1, ???, 'test1: 10 = 10'
CALL assert_equal test2, ???, 'test2: 10 \= 5'
CALL assert_equal test3, ???, 'test3: 3 > 7'
CALL assert_equal test4, ???, 'test4: 3 < 7'
CALL assert_equal test5, ???, 'test5: 5 >= 5'
CALL assert_equal test6, ???, 'test6: 4 <= 3'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
