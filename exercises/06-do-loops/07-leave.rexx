/* Exercise: LEAVE — Exit a Loop Early
 *
 * LEAVE immediately exits the innermost DO loop. It is useful
 * when you need to stop looping based on a condition discovered
 * inside the loop body:
 *
 *   DO i = 1 TO 100
 *     IF someCondition THEN LEAVE
 *   END
 *
 * After LEAVE, execution continues with the instruction after END.
 * The control variable retains its value at the time of LEAVE.
 *
 * Your task: Find the first multiple of 7 that is greater than 50.
 */

/* I AM NOT DONE */

found = 0

DO i = 1 TO 100
  multiple = i * 7
  /* Fix: if multiple > 50 then save it and exit the loop */
  IF multiple > 50 THEN DO
    found = ???
    ???
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal found, '56', 'first multiple of 7 over 50 should be 56'
CALL assert_equal i, '8', 'should find it at i=8 (8*7=56)'
CALL assert_true found > 50, 'found should be greater than 50'
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
