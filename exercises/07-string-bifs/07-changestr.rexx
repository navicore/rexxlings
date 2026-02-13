/* Exercise: CHANGESTR and COUNTSTR — Find and Replace
 *
 * COUNTSTR(needle, haystack) returns the number of times 'needle'
 * appears in 'haystack'.
 *
 * CHANGESTR(needle, haystack, replacement) replaces every occurrence
 * of 'needle' in 'haystack' with 'replacement'.
 *
 * Examples:
 *   COUNTSTR('is', 'This is bliss')        =>  3
 *   CHANGESTR('cat', 'cat in a cat hat', 'dog')  =>  'dog in a dog hat'
 *
 * Your task: Use COUNTSTR and CHANGESTR to produce the expected results.
 */

/* I AM NOT DONE */

sentence = 'the cat sat on the mat'

/* Count how many times 'at' appears */
at_count = 0             /* Fix this */

/* Replace 'cat' with 'dog' */
with_dog = sentence      /* Fix this */

/* Replace all spaces with underscores */
underscored = sentence   /* Fix this */

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
