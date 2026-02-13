/* Exercise: WORDINDEX and WORDLENGTH — Word Positions and Lengths */

data = 'Alice Bob Charlotte'

/* Where does the second word start? */
bob_pos = WORDINDEX(data, 2)

/* How long is the third word? */
third_len = WORDLENGTH(data, 3)

/* Where does the first word start? */
first_pos = WORDINDEX(data, 1)

/* How long is the second word? */
bob_len = WORDLENGTH(data, 2)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal bob_pos, 7, 'Bob starts at position 7'
CALL assert_equal third_len, 9, 'Charlotte has 9 characters'
CALL assert_equal first_pos, 1, 'Alice starts at position 1'
CALL assert_equal bob_len, 3, 'Bob has 3 characters'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
