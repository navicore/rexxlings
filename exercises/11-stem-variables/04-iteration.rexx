/* Exercise: Iterating Stems — Using a Key List
 *
 * REXX stems do not track which tails have been set. There is no
 * built-in way to "iterate over all keys" of a stem.
 *
 * A common pattern is to keep a separate word list of keys:
 *
 *   keys = 'red green blue'
 *   color.red = '#FF0000'
 *   color.green = '#00FF00'
 *   color.blue = '#0000FF'
 *
 *   DO i = 1 TO WORDS(keys)
 *     key = WORD(keys, i)
 *     SAY key '=' color.key
 *   END
 *
 * Your task: Store prices for three items in a stem. Keep a word
 * list of item names. Iterate and build a result string showing
 * all items and their prices.
 */

/* I AM NOT DONE */

/* Define the item prices and key list */
items = 'apple bread milk'
price. = 0
???

/* Build result: 'apple:2 bread:3 milk:4' */
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
