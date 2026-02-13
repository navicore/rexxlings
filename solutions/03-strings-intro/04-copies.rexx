/* Exercise: COPIES() — Repeating Strings */

/* Create a line of 20 equal signs */
separator = COPIES('=', 20)

/* Repeat 'REXX ' three times */
chant = COPIES('REXX ', 3)

/* Create a simple box top: '+----+' */
box_top = '+' || COPIES('-', 4) || '+'

/* How long is the separator? */
sep_len = LENGTH(separator)

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
