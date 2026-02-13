/* Exercise: 100! (Factorial) — Big Number Showcase */

/* Set precision high enough for 100! */
NUMERIC DIGITS 200

/* Compute 100! using a loop */
factorial = 1
DO i = 2 TO 100
  factorial = factorial * i
END

/* Count the digits */
digit_count = LENGTH(factorial)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal digit_count, 158, '100! should have 158 digits'
CALL assert_equal LEFT(factorial, 5), '93326', '100! should start with 93326'
CALL assert_equal RIGHT(factorial, 2), '00', '100! should end with 00'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
