/* Exercise: TRANSLATE — Character Translation and Uppercasing */

greeting = 'hello world'

/* Convert to uppercase */
upper_greeting = TRANSLATE(greeting)

/* Replace hyphens with spaces */
phone = '555-867-5309'
spaced_phone = TRANSLATE(phone, ' ', '-')

/* Replace vowels with stars */
secret = 'REXX is fun'
starred = TRANSLATE(secret, '**********', 'AEIOUaeiou')

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal upper_greeting, 'HELLO WORLD', 'uppercase greeting'
CALL assert_equal spaced_phone, '555 867 5309', 'hyphens replaced with spaces'
CALL assert_equal starred, 'R*XX *s f*n', 'vowels replaced with stars'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
