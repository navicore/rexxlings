/* Exercise: Comparison Operators */

test1 = (10 = 10)
test2 = (10 \= 5)
test3 = (3 > 7)
test4 = (3 < 7)
test5 = (5 >= 5)
test6 = (4 <= 3)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal test1, '1', 'test1: 10 = 10'
CALL assert_equal test2, '1', 'test2: 10 \= 5'
CALL assert_equal test3, '0', 'test3: 3 > 7'
CALL assert_equal test4, '1', 'test4: 3 < 7'
CALL assert_equal test5, '1', 'test5: 5 >= 5'
CALL assert_equal test6, '0', 'test6: 4 <= 3'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
