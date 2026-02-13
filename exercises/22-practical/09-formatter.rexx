/* Exercise: Text Formatter — Word Wrap
 *
 * Write a text formatter that wraps text to a maximum line width.
 *
 * Strategy:
 * 1. Process each word from the input
 * 2. If adding the word would exceed the max width, start a new line
 * 3. Otherwise, append the word to the current line
 * 4. Separate lines with '|' for testing purposes
 *
 * Your task: Write a wordWrap function that breaks text into lines
 * of at most N characters. Words should not be split.
 */

/* I AM NOT DONE */

text = 'the quick brown fox jumps over the lazy dog near the river bank'

CALL wordWrap text, 20
wrapped = RESULT

/* Count the lines (separated by |) */
line_count = 0
temp = wrapped
DO WHILE temp \= ''
  PARSE VAR temp line '|' temp
  line_count = line_count + 1
END

/* Check that no line exceeds the max width */
too_long = 0
temp = wrapped
DO WHILE temp \= ''
  PARSE VAR temp line '|' temp
  IF LENGTH(line) > 20 THEN too_long = 1
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_true line_count > 1, 'Text should be wrapped into multiple lines'
CALL assert_equal too_long, 0, 'No line should exceed 20 characters'
EXIT 0

/* Write your wordWrap subroutine here */
???

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
