/* Exercise: COMPARE and ABBREV — String Comparison
 *
 * COMPARE(s1, s2) returns 0 if the strings are equal (after padding
 * the shorter one with blanks). Otherwise it returns the position of
 * the first character that differs.
 *
 * ABBREV(information, info, length) returns 1 if 'info' is an
 * abbreviation of 'information' with at least 'length' characters.
 * If length is omitted, any non-empty prefix matches.
 *
 * Examples:
 *   COMPARE('abc', 'abc')      =>  0
 *   COMPARE('abc', 'axc')      =>  2
 *   ABBREV('PRINT', 'PR')      =>  1  (true)
 *   ABBREV('PRINT', 'PR', 3)   =>  0  (false, need 3 chars minimum)
 *
 * Your task: Use COMPARE and ABBREV to produce the expected results.
 */

/* I AM NOT DONE */

/* COMPARE: check if two strings are equal */
cmp1 = COMPARE('hello', 'hello')     /* Should be 0 — do not change */

cmp2 = COMPARE('hello', 'help')      /* What position differs? — do not change */

/* What value does cmp2 have? */
expected_cmp2 = 0        /* Fix: set to the correct position */

/* ABBREV: check abbreviations */
is_abbrev1 = 0           /* Fix: Is 'INST' an abbreviation of 'INSTALL'? */

is_abbrev2 = 0           /* Fix: Is 'IN' an abbreviation of 'INSTALL'
                             with minimum length 3? */

is_abbrev3 = 0           /* Fix: Is 'INST' an abbreviation of 'INSTALL'
                             with minimum length 4? */

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
