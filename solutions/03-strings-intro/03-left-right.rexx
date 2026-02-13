/* Exercise: LEFT() and RIGHT() — Taking from the Edges */

greeting = 'Good Morning'

/* Get the first 4 characters */
first_word = LEFT(greeting, 4)

/* Get the last 7 characters */
second_word = RIGHT(greeting, 7)

filename = 'report.txt'

/* Get the file extension (last 3 characters) */
extension = RIGHT(filename, 3)

/* Get the base name (first 6 characters) */
basename = LEFT(filename, 6)

/* LEFT can pad a string: make 'Hi' into a 10-character string
 * padded with spaces on the right. What is its LENGTH? */
padded = LEFT('Hi', 10)
padded_len = LENGTH(padded)

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
