/* Exercise: Blank Concatenation
 *
 * In REXX, placing two values side by side with a space between
 * them concatenates them WITH a space in the middle. This is
 * called "blank concatenation."
 *
 * Example:
 *   answer = 'Good' 'Morning'
 *   SAY answer            -->  Good Morning
 *
 * Variables work the same way:
 *   first = 'Good'
 *   second = 'Morning'
 *   answer = first second
 *   SAY answer            -->  Good Morning
 *
 * Your task: Use blank concatenation to build the expected strings.
 */

/* I AM NOT DONE */

word1 = 'Hello'
word2 = 'World'

/* Use blank concatenation to combine word1 and word2 */
greeting = ???

part1 = 'REXX'
part2 = 'is'
part3 = 'fun'

/* Use blank concatenation to combine all three parts */
sentence = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal greeting, 'Hello World', 'greeting should be Hello World'
CALL assert_equal sentence, 'REXX is fun', 'sentence should be REXX is fun'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
