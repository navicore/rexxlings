/* Exercise: STRIP — Remove Leading and Trailing Characters */

padded = '   REXX   '

/* Strip blanks from both sides */
both_stripped = STRIP(padded)

/* Strip only leading blanks */
left_stripped = STRIP(padded, 'L')

/* Strip only trailing blanks */
right_stripped = STRIP(padded, 'T')

/* Strip a specific character from both sides */
dashes = '---hello---'
no_dashes = STRIP(dashes, 'B', '-')

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal both_stripped, 'REXX', 'both sides stripped'
CALL assert_equal left_stripped, 'REXX   ', 'leading blanks stripped'
CALL assert_equal right_stripped, '   REXX', 'trailing blanks stripped'
CALL assert_equal no_dashes, 'hello', 'dashes stripped from both sides'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
