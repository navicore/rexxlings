/* Exercise: DATATYPE() and VERIFY() — Type Checking
 *
 * DATATYPE(string) returns 'NUM' if the string is a valid number,
 * or 'CHAR' otherwise:
 *   DATATYPE('42')     =>  'NUM'
 *   DATATYPE('hello')  =>  'CHAR'
 *
 * DATATYPE(string, type) returns 1 or 0 if the string matches the type:
 *   DATATYPE('42', 'N')       =>  1   (is a number)
 *   DATATYPE('FF', 'X')       =>  1   (is valid hex)
 *   DATATYPE('hello', 'A')    =>  1   (is alphabetic)
 *   DATATYPE('abc123', 'A')   =>  0   (not purely alphabetic)
 *
 * VERIFY(string, reference) returns 0 if every character in string
 * appears in reference, or the position of the first non-matching char:
 *   VERIFY('123', '0123456789')  =>  0  (all digits)
 *   VERIFY('12x3', '0123456789') =>  3  (x at position 3)
 *
 * Your task: Use DATATYPE() and VERIFY() as specified below.
 */

/* I AM NOT DONE */

is_num    = ???
is_char   = ???
is_hex    = ???
is_alpha  = ???
all_digit = ???
first_bad = ???

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
