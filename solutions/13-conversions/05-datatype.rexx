/* Exercise: DATATYPE() and VERIFY() — Type Checking */

is_num    = DATATYPE('42')
is_char   = DATATYPE('hello')
is_hex    = DATATYPE('FF', 'X')
is_alpha  = DATATYPE('hello', 'A')
all_digit = VERIFY('123', '0123456789')
first_bad = VERIFY('12x3', '0123456789')

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal is_num, 'NUM', 'DATATYPE(42) should be NUM'
CALL assert_equal is_char, 'CHAR', 'DATATYPE(hello) should be CHAR'
CALL assert_equal is_hex, 1, 'DATATYPE(FF, X) should be 1'
CALL assert_equal is_alpha, 1, 'DATATYPE(hello, A) should be 1'
CALL assert_equal all_digit, 0, 'VERIFY(123, 0123456789) should be 0'
CALL assert_equal first_bad, 3, 'VERIFY(12x3, 0123456789) should be 3'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
