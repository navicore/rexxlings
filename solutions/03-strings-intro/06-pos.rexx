/* Exercise: POS() — Finding Strings */

sentence = 'The quick brown fox jumps over the lazy dog'

/* Find the position of 'quick' in the sentence */
pos1 = POS('quick', sentence)

/* Find the position of 'fox' in the sentence */
pos2 = POS('fox', sentence)

/* Search for something that is not there */
pos3 = POS('cat', sentence)

/* Find the position of 'the' (lowercase). */
pos4 = POS('the', sentence)

/* Use POS to check if a string contains a substring. */
contains_fox = (POS('fox', sentence) > 0)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal pos1, '5', 'pos1: quick starts at position 5'
CALL assert_equal pos2, '17', 'pos2: fox starts at position 17'
CALL assert_equal pos3, '0', 'pos3: cat is not in the sentence'
CALL assert_equal pos4, '32', 'pos4: the (lowercase) starts at position 32'
CALL assert_equal contains_fox, '1', 'contains_fox should be 1 (true)'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
