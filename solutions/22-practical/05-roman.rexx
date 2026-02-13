/* Exercise: Roman Numerals */

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

toRoman: PROCEDURE
  PARSE ARG num
  values = '1000 900 500 400 100 90 50 40 10 9 5 4 1'
  numerals = 'M CM D CD C XC L XL X IX V IV I'
  answer = ''
  DO i = 1 TO WORDS(values)
    v = WORD(values, i)
    n = WORD(numerals, i)
    DO WHILE num >= v
      answer = answer || n
      num = num - v
    END
  END
  RETURN answer

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
