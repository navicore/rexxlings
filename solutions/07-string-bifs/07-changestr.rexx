/* Exercise: CHANGESTR and COUNTSTR — Find and Replace */

sentence = 'the cat sat on the mat'

/* Count how many times 'at' appears */
at_count = COUNTSTR('at', sentence)

/* Replace 'cat' with 'dog' */
with_dog = CHANGESTR('cat', sentence, 'dog')

/* Replace all spaces with underscores */
underscored = CHANGESTR(' ', sentence, '_')

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal at_count, 3, 'count of at'
CALL assert_equal with_dog, 'the dog sat on the mat', 'cat replaced with dog'
CALL assert_equal underscored, 'the_cat_sat_on_the_mat', 'spaces to underscores'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
