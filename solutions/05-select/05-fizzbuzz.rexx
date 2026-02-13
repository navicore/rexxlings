/* Exercise: FizzBuzz with SELECT */

answer = ''

DO i = 1 TO 20
  SELECT
    WHEN i // 3 = 0 & i // 5 = 0 THEN word = 'FizzBuzz'
    WHEN i // 3 = 0 THEN word = 'Fizz'
    WHEN i // 5 = 0 THEN word = 'Buzz'
    OTHERWISE word = i
  END
  IF answer = '' THEN answer = word
  ELSE answer = answer word
END

/* ===== Tests — do not edit below this line ===== */
PARSE VAR answer w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 .
CALL assert_equal w1, '1', 'position 1 should be 1'
CALL assert_equal w3, 'Fizz', 'position 3 should be Fizz'
CALL assert_equal w5, 'Buzz', 'position 5 should be Buzz'
CALL assert_equal w6, 'Fizz', 'position 6 should be Fizz'
CALL assert_equal w10, 'Buzz', 'position 10 should be Buzz'
CALL assert_equal w15, 'FizzBuzz', 'position 15 should be FizzBuzz'
CALL assert_true w15 = 'FizzBuzz', 'position 15 must be FizzBuzz'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
