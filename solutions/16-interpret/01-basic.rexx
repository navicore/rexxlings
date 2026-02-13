/* Exercise: Basic INTERPRET — Execute Strings as Code */

/* Build a string that assigns result1 = 2 + 3, then INTERPRET it */
code1 = 'result1 = 2 + 3'
INTERPRET code1

/* Build a string that assigns result2 = 'HELLO', then INTERPRET it */
code2 = "result2 = 'HELLO'"
INTERPRET code2

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 5, 'INTERPRET should set result1 to 5'
CALL assert_equal result2, 'HELLO', 'INTERPRET should set result2 to HELLO'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
