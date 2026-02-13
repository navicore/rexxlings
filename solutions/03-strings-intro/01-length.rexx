/* Exercise: LENGTH() — Measuring Strings */

/* What is the length of 'REXX'? */
len1 = LENGTH('REXX')

/* What is the length of 'Hello, World!'? */
len2 = LENGTH('Hello, World!')

/* What is the length of an empty string? */
len3 = LENGTH('')

/* Store a string in a variable, then get its length */
message = 'I love REXX'
len4 = LENGTH(message)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal len1, '4', 'len1: LENGTH of REXX should be 4'
CALL assert_equal len2, '13', 'len2: LENGTH of Hello, World! should be 13'
CALL assert_equal len3, '0', 'len3: LENGTH of empty string should be 0'
CALL assert_equal len4, '11', 'len4: LENGTH of I love REXX should be 11'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
