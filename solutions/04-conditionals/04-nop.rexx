/* Exercise: NOP — The No-Operation Placeholder */

onSale = 1
price = 100

IF onSale THEN
  NOP
ELSE
  price = price * 2

fuelLevel = 80
warning = 'none'

IF fuelLevel < 20 THEN
  warning = 'low fuel'
ELSE
  NOP

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal price, '100', 'price should stay 100 when on sale'
CALL assert_equal warning, 'none', 'warning should be none when fuel is 80'
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
