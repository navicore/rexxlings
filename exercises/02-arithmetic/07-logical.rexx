/* Exercise: Logical Operators
 *
 * REXX provides logical (boolean) operators that work with
 * the values 1 (true) and 0 (false):
 *
 *   &    AND — true only if BOTH sides are true
 *   |    OR  — true if EITHER side is true
 *   \    NOT — flips true to false and vice versa
 *
 * Examples:
 *   answer = (1 & 1)     result is '1' (true AND true = true)
 *   answer = (1 & 0)     result is '0' (true AND false = false)
 *   answer = (0 | 1)     result is '1' (false OR true = true)
 *   answer = \0           result is '1' (NOT false = true)
 *
 * You can combine comparisons with logical operators:
 *   answer = (3 < 5) & (10 > 2)    result is '1'
 *
 * Your task: Predict the result of each logical expression.
 */

/* I AM NOT DONE */

/* Replace each ??? with '1' (true) or '0' (false) */

test1 = (1 & 1)
test2 = (1 & 0)
test3 = (0 | 0)
test4 = (0 | 1)
test5 = \1
test6 = \0

/* Combining comparisons with logic */
test7 = (5 > 3) & (10 > 7)
test8 = (5 > 3) & (10 < 7)
test9 = (5 > 3) | (10 < 7)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal test1, ???, 'test1: 1 & 1'
CALL assert_equal test2, ???, 'test2: 1 & 0'
CALL assert_equal test3, ???, 'test3: 0 | 0'
CALL assert_equal test4, ???, 'test4: 0 | 1'
CALL assert_equal test5, ???, 'test5: \1'
CALL assert_equal test6, ???, 'test6: \0'
CALL assert_equal test7, ???, 'test7: (5 > 3) & (10 > 7)'
CALL assert_equal test8, ???, 'test8: (5 > 3) & (10 < 7)'
CALL assert_equal test9, ???, 'test9: (5 > 3) | (10 < 7)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
