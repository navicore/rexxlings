/* Exercise: REXX Knowledge Quiz
 *
 * Test your REXX knowledge! Set each variable to the correct
 * answer about REXX behavior.
 *
 * This exercise reviews concepts from throughout the course.
 * Think carefully about each question.
 */

/* I AM NOT DONE */

/* Q1: What does an uninitialized variable return?
 * For example, if you never assigned `MYVAR`, what is its value?
 * (Hint: REXX returns the variable's own name in uppercase)
 */
q1 = ???

/* Q2: What operator is used for integer division in REXX?
 * (Hint: it is a single character)
 */
q2 = ???

/* Q3: What operator is used for remainder (modulo) in REXX?
 * (Hint: it is two characters)
 */
q3 = ???

/* Q4: What instruction adds an item to the TOP of the queue?
 * (Just the keyword, uppercase)
 */
q4 = ???

/* Q5: What instruction adds an item to the BOTTOM of the queue?
 * (Just the keyword, uppercase)
 */
q5 = ???

/* Q6: PULL does two things: removes from queue AND does what
 * to the value? (One word, lowercase)
 */
q6 = ???

/* Q7: What REXX BIF reverses a string?
 * (Just the function name, uppercase, no parentheses)
 */
q7 = ???

/* Q8: What keyword exits a DO loop early?
 * (Uppercase)
 */
q8 = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal q1, 'MYVAR', 'Uninitialized variable returns its own uppercase name'
CALL assert_equal q2, '%', 'Integer division operator is %'
CALL assert_equal q3, '//', 'Remainder operator is //'
CALL assert_equal q4, 'PUSH', 'PUSH adds to the top of the queue'
CALL assert_equal q5, 'QUEUE', 'QUEUE adds to the bottom of the queue'
CALL assert_equal q6, 'uppercases', 'PULL uppercases the value'
CALL assert_equal q7, 'REVERSE', 'REVERSE is the string-reversal BIF'
CALL assert_equal q8, 'LEAVE', 'LEAVE exits a DO loop early'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
