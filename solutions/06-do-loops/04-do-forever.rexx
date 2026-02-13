/* Exercise: DO FOREVER — Infinite Loop with LEAVE */

value = 1
count = 0

DO FOREVER
  IF value > 1000 THEN LEAVE
  value = value * 2
  count = count + 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal value, '1024', 'first power of 2 over 1000 should be 1024'
CALL assert_equal count, '10', 'should take 10 doublings to reach 1024'
CALL assert_true value > 1000, 'value should exceed 1000'
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
