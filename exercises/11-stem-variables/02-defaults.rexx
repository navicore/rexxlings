/* Exercise: Stem Defaults — Initializing All Tails
 *
 * You can set a default value for ALL tails of a stem at once
 * by assigning to the stem with no tail:
 *
 *   count. = 0
 *
 * Now every `count.anything` starts at 0, unless explicitly set
 * to something else. This is very useful for counters and accumulators.
 *
 *   count. = 0
 *   count.apples = 5
 *   SAY count.apples   -- prints: 5
 *   SAY count.oranges   -- prints: 0  (the default)
 *
 * Your task: Set the default for the `score.` stem to 0.
 * Then set specific scores. The tests check both set and unset tails.
 */

/* I AM NOT DONE */

/* Set the default for all score. tails to 0 */
???

/* Now set specific scores */
score.math = 95
score.english = 87
score.science = 92

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal score.math, 95, 'score.math should be 95'
CALL assert_equal score.english, 87, 'score.english should be 87'
CALL assert_equal score.science, 92, 'score.science should be 92'
CALL assert_equal score.history, 0, 'score.history should default to 0'
CALL assert_equal score.art, 0, 'score.art should default to 0'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
