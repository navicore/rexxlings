/* Exercise: String Keys — Stems as Maps
 *
 * The tail of a stem variable can be any value — including the
 * contents of a string variable. This makes stems work like
 * dictionaries or maps:
 *
 *   country = 'France'
 *   capital.country = 'Paris'       -- same as capital.France
 *   -- but actually resolves to capital.FRANCE (REXX uppercases)
 *
 * REXX resolves the tail by looking up the variable's value.
 * If `country` contains `'France'`, then `capital.country` is
 * the same as `capital.FRANCE` (uppercased).
 *
 * You can also use literal tails directly:
 *
 *   capital.USA = 'Washington'
 *
 * Your task: Create a `capital.` stem that maps country names
 * to their capital cities. Then look up values using variables.
 */

/* I AM NOT DONE */

/* Set capitals for these countries */
capital.FRANCE = ???
capital.JAPAN = ???
capital.BRAZIL = ???

/* Look up using a variable */
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
