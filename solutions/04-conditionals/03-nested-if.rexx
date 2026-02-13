/* Exercise: Nested IF — Classifying a Number */

num1 = -5
num2 = 0
num3 = 42

IF num1 < 0 THEN
  class1 = 'negative'
ELSE
  IF num1 = 0 THEN
    class1 = 'zero'
  ELSE
    class1 = 'positive'

IF num2 < 0 THEN
  class2 = 'negative'
ELSE
  IF num2 = 0 THEN
    class2 = 'zero'
  ELSE
    class2 = 'positive'

IF num3 < 0 THEN
  class3 = 'negative'
ELSE
  IF num3 = 0 THEN
    class3 = 'zero'
  ELSE
    class3 = 'positive'

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal class1, 'negative', 'class1 should be negative for -5'
CALL assert_equal class2, 'zero', 'class2 should be zero for 0'
CALL assert_equal class3, 'positive', 'class3 should be positive for 42'
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
