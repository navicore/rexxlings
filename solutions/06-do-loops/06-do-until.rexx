/* Exercise: DO UNTIL — Loop Until Condition Met */

totalWeight = 0
itemCount = 0
itemWeight = 7

DO UNTIL totalWeight >= 50
  totalWeight = totalWeight + itemWeight
  itemCount = itemCount + 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal totalWeight, '56', 'total weight should be 56'
CALL assert_equal itemCount, '8', 'should need 8 items'
CALL assert_true totalWeight >= 50, 'total weight should be at least 50'
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
