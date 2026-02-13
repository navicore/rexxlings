/* Exercise: REXX Knowledge Quiz */

/* Q1: What does an uninitialized variable return? */
q1 = 'MYVAR'

/* Q2: What operator is used for integer division in REXX? */
q2 = '%'

/* Q3: What operator is used for remainder (modulo) in REXX? */
q3 = '//'

/* Q4: What instruction adds an item to the TOP of the queue? */
q4 = 'PUSH'

/* Q5: What instruction adds an item to the BOTTOM of the queue? */
q5 = 'QUEUE'

/* Q6: PULL does two things: removes from queue AND does what? */
q6 = 'uppercases'

/* Q7: What REXX BIF reverses a string? */
q7 = 'REVERSE'

/* Q8: What keyword exits a DO loop early? */
q8 = 'LEAVE'

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
