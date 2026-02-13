/* Exercise: Addition and Subtraction */

/* Calculate the sum of 25 and 17 */
sum = 25 + 17

/* Calculate the difference: 100 minus 37 */
difference = 100 - 37

/* Using variables: start at 50, add 15, then subtract 20 */
start = 50
answer = start + 15 - 20

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal sum, '42', 'sum should be 42'
CALL assert_equal difference, '63', 'difference should be 63'
CALL assert_equal answer, '45', 'result should be 45'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
