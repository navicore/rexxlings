/* Exercise: Nested DO Loops */

count = 0
lastProduct = 0
sumProducts = 0

DO i = 1 TO 3
  DO j = 1 TO 4
    product = i * j
    lastProduct = product
    sumProducts = sumProducts + product
    count = count + 1
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count, '12', 'should be 12 multiplications (3*4)'
CALL assert_equal lastProduct, '12', 'last product should be 3*4=12'
CALL assert_equal sumProducts, '60', 'sum of all products should be 60'
CALL assert_true count = 12, 'count should be 12'
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
