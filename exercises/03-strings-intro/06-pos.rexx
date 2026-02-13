/* Exercise: POS() — Finding Strings
 *
 * POS(needle, haystack) searches for needle inside haystack
 * and returns the position where it was found (1-based).
 * Returns 0 if the needle is not found.
 *
 *   POS('World', 'Hello World')   -->  7
 *   POS('xyz', 'Hello World')     -->  0  (not found)
 *   POS('l', 'Hello')             -->  3  (first occurrence)
 *
 * Note the argument order: the thing you are searching FOR
 * comes first, then the string you are searching IN.
 *
 * Your task: Use POS() to find substrings.
 */

/* I AM NOT DONE */

sentence = 'The quick brown fox jumps over the lazy dog'

/* Find the position of 'quick' in the sentence */
pos1 = ???

/* Find the position of 'fox' in the sentence */
pos2 = ???

/* Search for something that is not there */
pos3 = ???

/* Find the position of 'the' (lowercase).
 * Note: POS is case-sensitive! 'The' and 'the' are different. */
pos4 = ???

/* Use POS to check if a string contains a substring.
 * Store 1 if 'fox' is found, 0 if not found.
 * Hint: POS returns 0 when not found, and a positive number when found.
 * A comparison like (POS(...) > 0) returns 1 or 0. */
contains_fox = ???

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
