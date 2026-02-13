/* Exercise: QUEUE — FIFO Order
 *
 * While PUSH adds to the top (LIFO), QUEUE adds to the BOTTOM
 * of the queue — giving you First-In-First-Out (FIFO) behavior:
 *
 *   QUEUE 'apple'
 *   QUEUE 'banana'
 *   PULL item       -- item = 'APPLE' (first queued, first pulled)
 *
 * PULL still takes from the top and still uppercases the result.
 *
 * Your task: Use QUEUE to add 'red', 'green', 'blue' to the queue,
 * then pull them back. Because QUEUE is FIFO, they come back in
 * the same order they were added (but uppercased).
 */

/* I AM NOT DONE */

/* Queue three items — use QUEUE, not PUSH */
???

/* Pull them back */
PULL first_out
PULL second_out
PULL third_out

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first_out, 'RED', 'First pulled should be RED (first queued)'
CALL assert_equal second_out, 'GREEN', 'Second pulled should be GREEN'
CALL assert_equal third_out, 'BLUE', 'Third pulled should be BLUE (last queued)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
