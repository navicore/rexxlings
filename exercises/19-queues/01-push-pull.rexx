/* Exercise: PUSH and PULL — LIFO Stack
 *
 * REXX has a built-in data queue (stack). You interact with it using:
 *
 *   PUSH value    — places value on TOP of the queue (LIFO)
 *   PULL variable — removes the TOP item and assigns it (uppercased!)
 *
 * Because PUSH adds to the top and PULL takes from the top,
 * items come back in Last-In-First-Out order:
 *
 *   PUSH 'apple'
 *   PUSH 'banana'
 *   PULL item       -- item = 'BANANA' (last pushed, first pulled)
 *
 * IMPORTANT: PULL always uppercases the result!
 *
 * Your task: Push three items onto the queue — 'first', 'second',
 * 'third' — then pull them back and assign to first_out, second_out,
 * third_out so the tests pass.
 */

/* I AM NOT DONE */

/* Push three items onto the queue */
???

/* Pull them back — remember LIFO order and uppercasing */
PULL first_out
PULL second_out
PULL third_out

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first_out, 'THIRD', 'First pulled should be THIRD (last pushed)'
CALL assert_equal second_out, 'SECOND', 'Second pulled should be SECOND'
CALL assert_equal third_out, 'FIRST', 'Third pulled should be FIRST (first pushed)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
