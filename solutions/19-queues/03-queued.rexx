/* Exercise: QUEUED() — Counting Queue Items */

/* Push 4 items onto the queue */
PUSH 'alpha'
PUSH 'bravo'
PUSH 'charlie'
PUSH 'delta'

/* How many items are on the queue now? */
count_after_push = QUEUED()

/* Pull all items off the queue */
DO WHILE QUEUED() > 0
  PULL junk
END

/* How many items are on the queue now? */
count_after_pull = QUEUED()

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
