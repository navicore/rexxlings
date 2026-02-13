/* Exercise: ITERATE — Skip to Next Iteration
 *
 * ITERATE skips the rest of the current iteration and jumps
 * to the next one (like "continue" in other languages):
 *
 *   DO i = 1 TO 10
 *     IF i // 2 \= 0 THEN ITERATE
 *     /* only even numbers reach here */
 *   END
 *
 * Your task: Sum only the even numbers from 1 to 20 by using
 * ITERATE to skip odd numbers.
 */

/* I AM NOT DONE */

total = 0
evens = ''

DO i = 1 TO 20
  /* Fix: skip odd numbers using ITERATE */
  IF i // 2 \= 0 THEN ???
  total = total + i
  IF evens = '' THEN evens = i
  ELSE evens = evens i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal total, '110', 'sum of even numbers 2-20 should be 110'
CALL assert_equal evens, '2 4 6 8 10 12 14 16 18 20', 'evens should list all even numbers'
CALL assert_true total = 110, 'total should equal 110'
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
