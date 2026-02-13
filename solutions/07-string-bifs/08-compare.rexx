/* Exercise: COMPARE and ABBREV — String Comparison */

/* COMPARE: check if two strings are equal */
cmp1 = COMPARE('hello', 'hello')

cmp2 = COMPARE('hello', 'help')

/* What value does cmp2 have? */
expected_cmp2 = 4

/* ABBREV: check abbreviations */
is_abbrev1 = ABBREV('INSTALL', 'INST')

is_abbrev2 = ABBREV('INSTALL', 'IN', 3)

is_abbrev3 = ABBREV('INSTALL', 'INST', 4)

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal cmp1, 0, 'identical strings compare to 0'
CALL assert_equal expected_cmp2, 4, 'hello vs help differ at position 4'
CALL assert_equal is_abbrev1, 1, 'INST is abbreviation of INSTALL'
CALL assert_equal is_abbrev2, 0, 'IN is too short (need 3)'
CALL assert_equal is_abbrev3, 1, 'INST meets minimum length 4'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
