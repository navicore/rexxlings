/* Exercise: IF/THEN/ELSE — Choosing Between Two Paths */

temperature = 35

IF temperature > 30 THEN DO
  weather = 'hot'
  advice = 'stay cool'
END
ELSE DO
  weather = 'mild'
  advice = 'enjoy'
END

score = 45

IF score >= 50 THEN answer = 'pass'
ELSE answer = 'fail'

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal weather, 'hot', 'weather should be hot when temperature is 35'
CALL assert_equal advice, 'stay cool', 'advice should be stay cool'
CALL assert_equal answer, 'fail', 'result should be fail when score is 45'
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
