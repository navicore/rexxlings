/* Exercise: IF/THEN — Simple Conditional */

age = 25
status = 'minor'

IF age >= 18 THEN status = 'adult'

size = 150
category = 'small'

IF size > 100 THEN category = 'large'

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal status, 'adult', 'status should be adult when age is 25'
CALL assert_equal category, 'large', 'category should be large when size is 150'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
