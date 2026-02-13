/* Exercise: STRIP — Remove Leading and Trailing Characters
 *
 * STRIP(string, option, char) removes characters from a string.
 *   option: 'B' = Both ends (default), 'L' = Leading, 'T' = Trailing
 *   char:   the character to strip (default is blank)
 *
 * Examples:
 *   STRIP('  hello  ')        =>  'hello'       (both, blanks)
 *   STRIP('  hello  ', 'L')   =>  'hello  '     (leading blanks)
 *   STRIP('**hi**', 'B', '*') =>  'hi'          (both, asterisks)
 *
 * Your task: Use STRIP to produce the expected results.
 */

/* I AM NOT DONE */

padded = '   REXX   '

/* Strip blanks from both sides */
both_stripped = padded    /* Fix this */

/* Strip only leading blanks */
left_stripped = padded    /* Fix this */

/* Strip only trailing blanks */
right_stripped = padded   /* Fix this */

/* Strip a specific character from both sides */
dashes = '---hello---'
no_dashes = dashes        /* Fix this */

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
