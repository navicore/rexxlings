/* Exercise: COPIES() — Repeating Strings
 *
 * COPIES(string, n) returns a string repeated n times.
 *
 *   COPIES('Ha', 3)      -->  'HaHaHa'
 *   COPIES('-', 10)      -->  '----------'
 *   COPIES('abc', 0)     -->  ''  (empty string)
 *
 * This is useful for creating separators, padding, or patterns.
 *
 * Your task: Use COPIES() to create the expected strings.
 */

/* I AM NOT DONE */

/* Create a line of 20 equal signs: '====================' */
separator = ???

/* Repeat 'REXX ' three times: 'REXX REXX REXX ' */
chant = ???

/* Create a simple box top: '+----+' (plus, 4 dashes, plus)
 * Hint: combine COPIES with concatenation */
box_top = ???

/* How long is the separator? Use LENGTH and COPIES together. */
sep_len = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal separator, '====================', 'separator should be 20 equal signs'
CALL assert_equal chant, 'REXX REXX REXX ', 'chant should be REXX repeated 3 times with spaces'
CALL assert_equal box_top, '+----+', 'box_top should be +----+'
CALL assert_equal sep_len, '20', 'sep_len should be 20'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
