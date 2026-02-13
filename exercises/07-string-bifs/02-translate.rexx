/* Exercise: TRANSLATE — Character Translation and Uppercasing
 *
 * TRANSLATE can be used two ways:
 *   TRANSLATE(string)               — converts to uppercase
 *   TRANSLATE(string, output, input) — replaces each character in
 *     'input' with the corresponding character in 'output'
 *
 * Examples:
 *   TRANSLATE('hello')              =>  'HELLO'
 *   TRANSLATE('hello', 'aeiou', 'AEIOU')  — lowercases vowels
 *   TRANSLATE('2-5', ' ', '-')      =>  '2 5'   (dash to space)
 *
 * Your task: Use TRANSLATE to produce the expected results.
 */

/* I AM NOT DONE */

greeting = 'hello world'

/* Convert to uppercase */
upper_greeting = greeting   /* Fix this */

/* Replace hyphens with spaces */
phone = '555-867-5309'
spaced_phone = phone        /* Fix this */

/* Replace vowels with stars */
secret = 'REXX is fun'
starred = secret            /* Fix this — replace AEIOUaeiou with ********** */

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
