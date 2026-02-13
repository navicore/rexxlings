/* Exercise: Caesar Cipher
 *
 * A Caesar cipher shifts each letter by N positions in the alphabet.
 * For example, with shift 3: A->D, B->E, ..., X->A, Y->B, Z->C
 *
 * Strategy:
 * 1. Build the alphabet with XRANGE('A','Z')
 * 2. For each character, find its position with POS
 * 3. Add the shift (wrapping with modulo)
 * 4. Get the new character with SUBSTR
 *
 * Non-letter characters stay unchanged.
 *
 * Your task: Write a caesar function that shifts uppercase letters.
 * Encrypt 'HELLO' with shift 3 to get 'KHOOR'.
 */

/* I AM NOT DONE */

CALL caesar 'HELLO', 3
encrypted = RESULT

CALL caesar 'ABC', 1
encrypted2 = RESULT

CALL caesar 'XYZ', 3
encrypted3 = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal encrypted, 'KHOOR', 'HELLO shifted by 3 should be KHOOR'
CALL assert_equal encrypted2, 'BCD', 'ABC shifted by 1 should be BCD'
CALL assert_equal encrypted3, 'ABC', 'XYZ shifted by 3 should be ABC (wrap around)'
EXIT 0

/* Write your caesar subroutine here */
???

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
