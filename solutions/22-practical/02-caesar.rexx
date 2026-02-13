/* Exercise: Caesar Cipher */

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

caesar: PROCEDURE
  PARSE ARG text, shift
  alphabet = XRANGE('A', 'Z')
  answer = ''
  DO i = 1 TO LENGTH(text)
    ch = SUBSTR(text, i, 1)
    p = POS(ch, alphabet)
    IF p > 0 THEN DO
      newpos = ((p - 1 + shift) // 26) + 1
      answer = answer || SUBSTR(alphabet, newpos, 1)
    END
    ELSE
      answer = answer || ch
  END
  RETURN answer

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
