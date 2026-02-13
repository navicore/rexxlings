/* Exercise: FORMAT() — Formatting Numbers */

fmt1 = FORMAT(3.5, 3, 2)
fmt2 = FORMAT(42, 3, 3)
fmt3 = FORMAT(7.1, 2, 2)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal fmt1, '  3.50', 'FORMAT(3.5, 3, 2) should be "  3.50"'
CALL assert_equal fmt2, ' 42.000', 'FORMAT(42, 3, 3) should be " 42.000"'
CALL assert_equal STRIP(fmt3), '7.10', 'FORMAT(7.1, 2, 2) stripped should be "7.10"'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
