/* Exercise: Combined Concatenation
 *
 * Now let us put it all together! REXX has three ways to
 * concatenate:
 *
 *   1. Blank concatenation:  'a' 'b'     -->  'a b'   (adds space)
 *   2. Abuttal with ||:      'a' || 'b'  -->  'ab'    (no space)
 *   3. Abuttal by adjacency: 'a''b'      -->  'ab'    (no space)
 *
 * Your task: Use the right concatenation method for each result.
 */

first_name = 'Jane'
last_name = 'Doe'
title = 'Dr.'

/* Build "Dr. Jane Doe" — use blank concatenation for the spaces,
 * but note that "Dr." already ends with a period. */
full_name = title first_name last_name

/* Build an email: "jane.doe@example.com"
 * You will need || to avoid unwanted spaces. */
email = 'jane' || '.' || 'doe' || '@example.com'

/* Build a greeting: "Hello, Dr. Jane Doe!"
 * Combine literal strings, variables, blank and || concatenation.
 * The comma+space after Hello and the ! at the end need || */
greeting = 'Hello,' full_name || '!'

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal full_name, 'Dr. Jane Doe', 'full_name should be Dr. Jane Doe'
CALL assert_equal email, 'jane.doe@example.com', 'email should be jane.doe@example.com'
CALL assert_equal greeting, 'Hello, Dr. Jane Doe!', 'greeting should be Hello, Dr. Jane Doe!'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
