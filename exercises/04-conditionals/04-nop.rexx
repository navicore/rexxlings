/* Exercise: NOP — The No-Operation Placeholder
 *
 * Sometimes you want an IF/ELSE where one branch intentionally
 * does nothing. REXX requires an instruction after THEN and ELSE,
 * so you use NOP (No Operation) as a placeholder:
 *
 *   IF condition THEN NOP
 *   ELSE instruction
 *
 * Your task: Use NOP in the correct branch so each IF/ELSE works
 * properly and the tests pass.
 */

/* I AM NOT DONE */

/* We only want to act when the item is NOT on sale.
 * When it IS on sale, do nothing. */
onSale = 1
price = 100

/* Fix: use NOP in the branch that should do nothing */
IF onSale THEN
  price = price
ELSE
  price = price * 2

/* We only want to set a warning when the tank is low.
 * When the tank is fine, do nothing. */
fuelLevel = 80
warning = 'none'

/* Fix: complete this IF/ELSE using NOP for the "fine" case */
IF fuelLevel < 20 THEN
  warning = 'low fuel'

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
