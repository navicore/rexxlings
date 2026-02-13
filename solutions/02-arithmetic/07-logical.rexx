/* Exercise: Logical Operators */

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
CALL assert_equal test1, '1', 'test1: 1 & 1'
CALL assert_equal test2, '0', 'test2: 1 & 0'
CALL assert_equal test3, '0', 'test3: 0 | 0'
CALL assert_equal test4, '1', 'test4: 0 | 1'
CALL assert_equal test5, '0', 'test5: \1'
CALL assert_equal test6, '1', 'test6: \0'
CALL assert_equal test7, '1', 'test7: (5 > 3) & (10 > 7)'
CALL assert_equal test8, '0', 'test8: (5 > 3) & (10 < 7)'
CALL assert_equal test9, '1', 'test9: (5 > 3) | (10 < 7)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
