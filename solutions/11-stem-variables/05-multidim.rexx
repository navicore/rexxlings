/* Exercise: Multi-Dimensional Stems — Matrices */

m. = 0
size = 3

DO r = 1 TO size
  DO c = 1 TO size
    IF r = c THEN m.r.c = 1
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal m.1.1, 1, 'm.1.1 should be 1'
CALL assert_equal m.1.2, 0, 'm.1.2 should be 0'
CALL assert_equal m.1.3, 0, 'm.1.3 should be 0'
CALL assert_equal m.2.1, 0, 'm.2.1 should be 0'
CALL assert_equal m.2.2, 1, 'm.2.2 should be 1'
CALL assert_equal m.2.3, 0, 'm.2.3 should be 0'
CALL assert_equal m.3.1, 0, 'm.3.1 should be 0'
CALL assert_equal m.3.2, 0, 'm.3.2 should be 0'
CALL assert_equal m.3.3, 1, 'm.3.3 should be 1'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
