/* Exercise: Text Formatter — Word Wrap */

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

wordWrap: PROCEDURE
  PARSE ARG text, maxwidth
  answer = ''
  current_line = ''
  DO i = 1 TO WORDS(text)
    w = WORD(text, i)
    IF current_line = '' THEN
      current_line = w
    ELSE IF LENGTH(current_line) + 1 + LENGTH(w) <= maxwidth THEN
      current_line = current_line w
    ELSE DO
      IF answer = '' THEN
        answer = current_line
      ELSE
        answer = answer || '|' || current_line
      current_line = w
    END
  END
  /* Add the last line */
  IF current_line \= '' THEN DO
    IF answer = '' THEN
      answer = current_line
    ELSE
      answer = answer || '|' || current_line
  END
  RETURN answer

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
