/* Exercise: Stem Basics — Array-Like Variables
 *
 * REXX has no arrays, but "stem variables" (also called compound
 * variables) serve the same purpose:
 *
 *   arr.1 = 'first'
 *   arr.2 = 'second'
 *   arr.0 = 2           -- convention: arr.0 holds the count
 *
 * The part before the dot is the "stem", and the part after is
 * the "tail". Together, they form a compound variable.
 *
 * You can iterate over stem elements using a DO loop with the
 * count stored in stem.0:
 *
 *   DO i = 1 TO arr.0
 *     SAY arr.i
 *   END
 *
 * Your task: Create a stem called `fruit.` with three elements
 * and set fruit.0 to the count. Then build a space-separated
 * string of all fruits by iterating over them.
 */

/* I AM NOT DONE */

/* Set fruit.1 to 'apple', fruit.2 to 'banana', fruit.3 to 'cherry' */
/* Set fruit.0 to the count */
???

/* Build a result string by iterating over the stem */
answer = ''
DO i = 1 TO fruit.0
  IF answer \= '' THEN answer = answer || ' '
  answer = answer || fruit.i
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal fruit.0, 3, 'fruit.0 should be 3'
CALL assert_equal fruit.1, 'apple', 'fruit.1 should be apple'
CALL assert_equal fruit.2, 'banana', 'fruit.2 should be banana'
CALL assert_equal fruit.3, 'cherry', 'fruit.3 should be cherry'
CALL assert_equal answer, 'apple banana cherry', 'result should list all fruits'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
