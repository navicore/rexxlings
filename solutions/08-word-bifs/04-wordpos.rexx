/* Exercise: WORDPOS — Find a Word's Position */

colors = 'red green blue yellow orange purple'

/* Find the position of 'blue' */
blue_pos = WORDPOS('blue', colors)

/* Find the position of 'yellow orange' */
pair_pos = WORDPOS('yellow orange', colors)

/* Search for a word that is not present */
missing_pos = WORDPOS('pink', colors)

/* Find the position of 'red' */
red_pos = WORDPOS('red', colors)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal blue_pos, 3, 'blue is at word 3'
CALL assert_equal pair_pos, 4, 'yellow orange starts at word 4'
CALL assert_equal missing_pos, 0, 'pink is not found'
CALL assert_equal red_pos, 1, 'red is at word 1'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
