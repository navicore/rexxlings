/* Exercise: Abuttal Concatenation with ||
 *
 * Sometimes you want to join strings WITHOUT a space between them.
 * REXX provides the || operator for explicit concatenation with
 * no added space.
 *
 * Example:
 *   answer = 'Hello' || 'World'
 *   SAY answer            -->  HelloWorld
 *
 * This is different from blank concatenation, which adds a space:
 *   answer = 'Hello' 'World'
 *   SAY answer            -->  Hello World
 *
 * Your task: Use || to concatenate without spaces.
 */

/* I AM NOT DONE */

prefix = 'Super'
suffix = 'Hero'

/* Use || to join prefix and suffix with no space */
word = ???

area_code = '555'
number = '1234'

/* Use || to build a phone number like 555-1234 */
phone = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal word, 'SuperHero', 'word should be SuperHero'
CALL assert_equal phone, '555-1234', 'phone should be 555-1234'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
