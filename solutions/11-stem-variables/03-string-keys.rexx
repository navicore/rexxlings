/* Exercise: String Keys — Stems as Maps */

capital.FRANCE = 'Paris'
capital.JAPAN = 'Tokyo'
capital.BRAZIL = 'Brasilia'

country = 'FRANCE'
result1 = capital.country

country = 'JAPAN'
result2 = capital.country

country = 'BRAZIL'
result3 = capital.country

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal result1, 'Paris', 'capital of France should be Paris'
CALL assert_equal result2, 'Tokyo', 'capital of Japan should be Tokyo'
CALL assert_equal result3, 'Brasilia', 'capital of Brazil should be Brasilia'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
