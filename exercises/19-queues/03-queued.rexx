/* Exercise: QUEUED() — Counting Queue Items
 *
 * The built-in function QUEUED() returns the number of items
 * currently on the data queue:
 *
 *   PUSH 'a'
 *   PUSH 'b'
 *   SAY QUEUED()   -- prints: 2
 *
 * After pulling all items off the queue, QUEUED() returns 0.
 *
 * Your task:
 * 1. Push 4 items onto the queue and capture the count
 * 2. Pull all items off the queue and capture the count again
 */

/* I AM NOT DONE */

/* Push 4 items onto the queue */
???

/* How many items are on the queue now? */
count_after_push = ???

/* Pull all items off the queue */
DO WHILE QUEUED() > 0
  PULL junk
END

/* How many items are on the queue now? */
count_after_pull = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal count_after_push, 4, 'After pushing 4 items, QUEUED() should be 4'
CALL assert_equal count_after_pull, 0, 'After pulling all items, QUEUED() should be 0'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
