/* Exercise: Stem Defaults — Initializing All Tails */

score. = 0

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
