/* Exercise: Iterating Stems — Using a Key List */

items = 'apple bread milk'
price. = 0
price.apple = 2
price.bread = 3
price.milk = 4

answer = ''
DO i = 1 TO WORDS(items)
  key = WORD(items, i)
  IF answer \= '' THEN answer = answer || ' '
  answer = answer || key || ':' || price.key
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal price.apple, 2, 'price.apple should be 2'
CALL assert_equal price.bread, 3, 'price.bread should be 3'
CALL assert_equal price.milk, 4, 'price.milk should be 4'
CALL assert_equal answer, 'apple:2 bread:3 milk:4', 'result should list all items with prices'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
