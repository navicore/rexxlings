/* Exercise: Compound Conditions — & and |
 *
 * You can combine conditions using logical operators:
 *
 *   &   — AND (both must be true)
 *   |   — OR  (at least one must be true)
 *   \   — NOT (negates a condition)
 *
 * For example:
 *   IF age >= 13 & age <= 19 THEN SAY 'teenager'
 *   IF day = 'Sat' | day = 'Sun' THEN SAY 'weekend'
 *
 * Your task: Fix the conditions so the tests pass.
 */

/* I AM NOT DONE */

/* Check if a number is between 10 and 20 (inclusive) */
num = 15
inRange = 0
/* Fix: set inRange to 1 if num >= 10 AND num <= 20 */
IF ??? THEN inRange = 1

/* Check if a day is a weekend */
day = 'Saturday'
isWeekend = 0
/* Fix: set isWeekend to 1 if day is Saturday OR Sunday */
IF ??? THEN isWeekend = 1

/* Check if a person can ride (must be tall enough AND old enough) */
height = 140
age = 12
canRide = 0
/* Fix: set canRide to 1 if height >= 120 AND age >= 10 */
IF ??? THEN canRide = 1

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal inRange, '1', 'inRange should be 1 for num=15'
CALL assert_equal isWeekend, '1', 'isWeekend should be 1 for Saturday'
CALL assert_equal canRide, '1', 'canRide should be 1 (tall and old enough)'
CALL assert_true inRange = 1, 'inRange should be true'
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
