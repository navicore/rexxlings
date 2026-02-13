/* Exercise: LEFT() and RIGHT() — Taking from the Edges
 *
 * LEFT(string, n)  returns the first n characters.
 * RIGHT(string, n) returns the last n characters.
 *
 * These are simpler alternatives to SUBSTR for common cases.
 *
 * Examples:
 *   LEFT('Hello World', 5)    -->  'Hello'
 *   RIGHT('Hello World', 5)   -->  'World'
 *   LEFT('REXX', 2)           -->  'RE'
 *   RIGHT('REXX', 2)          -->  'XX'
 *
 * If n is larger than the string, LEFT pads with spaces on the
 * right, and RIGHT pads with spaces on the left.
 *
 * Your task: Use LEFT() and RIGHT() to extract string portions.
 */

/* I AM NOT DONE */

greeting = 'Good Morning'

/* Get the first 4 characters */
first_word = ???

/* Get the last 7 characters */
second_word = ???

filename = 'report.txt'

/* Get the file extension (last 3 characters) */
extension = ???

/* Get the base name (first 6 characters) */
basename = ???

/* LEFT can pad a string: make 'Hi' into a 10-character string
 * padded with spaces on the right. What is its LENGTH? */
padded = LEFT('Hi', 10)
padded_len = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal first_word, 'Good', 'first_word should be Good'
CALL assert_equal second_word, 'Morning', 'second_word should be Morning'
CALL assert_equal extension, 'txt', 'extension should be txt'
CALL assert_equal basename, 'report', 'basename should be report'
CALL assert_equal padded_len, '10', 'padded_len should be 10'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
