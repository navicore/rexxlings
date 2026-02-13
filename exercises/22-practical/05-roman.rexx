/* Exercise: Roman Numerals
 *
 * Convert a decimal number to Roman numeral notation.
 *
 * Roman numeral values:
 *   M=1000, CM=900, D=500, CD=400, C=100, XC=90,
 *   L=50, XL=40, X=10, IX=9, V=5, IV=4, I=1
 *
 * Strategy: From largest to smallest, subtract the value and
 * append the numeral while the number is >= that value.
 *
 * Your task: Write a toRoman function that converts integers
 * to Roman numerals.
 */

/* I AM NOT DONE */

CALL toRoman 42
roman1 = RESULT

CALL toRoman 1994
roman2 = RESULT

CALL toRoman 9
roman3 = RESULT

CALL toRoman 2024
roman4 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal roman1, 'XLII', '42 should be XLII'
CALL assert_equal roman2, 'MCMXCIV', '1994 should be MCMXCIV'
CALL assert_equal roman3, 'IX', '9 should be IX'
CALL assert_equal roman4, 'MMXXIV', '2024 should be MMXXIV'
EXIT 0

/* Write your toRoman subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
