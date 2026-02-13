/* Exercise: IF/THEN/ELSE — Choosing Between Two Paths
 *
 * You can add an ELSE clause to handle the false case:
 *
 *   IF condition THEN instruction; ELSE instruction
 *
 * When you need multiple instructions in either branch, use DO/END:
 *
 *   IF condition THEN DO
 *     instruction1
 *     instruction2
 *   END
 *   ELSE DO
 *     instruction3
 *     instruction4
 *   END
 *
 * Your task: Complete the IF/THEN/ELSE blocks so the tests pass.
 */

/* I AM NOT DONE */

temperature = 35

/* Fix: If temperature > 30 set weather to 'hot' and advice to 'stay cool'
 *      otherwise set weather to 'mild' and advice to 'enjoy' */
IF temperature > 30 THEN DO
  weather = ???
  advice = ???
END
ELSE DO
  weather = ???
  advice = ???
END

score = 45

/* Fix: If score >= 50 set result to 'pass', otherwise set result to 'fail' */
answer = ???

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
