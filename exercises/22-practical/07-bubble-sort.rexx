/* Exercise: Bubble Sort
 *
 * Implement bubble sort using stem variables.
 *
 * Bubble sort repeatedly steps through the list, compares adjacent
 * elements, and swaps them if they are in the wrong order.
 *
 * Algorithm:
 *   DO i = n TO 2 BY -1
 *     DO j = 1 TO i - 1
 *       IF arr.j > arr.next THEN swap them
 *     END
 *   END
 *
 * Your task: Sort the numbers in the arr. stem in ascending order.
 */

/* I AM NOT DONE */

/* Initialize the array */
arr.0 = 6
arr.1 = 64
arr.2 = 34
arr.3 = 25
arr.4 = 12
arr.5 = 22
arr.6 = 11

/* Bubble sort — fill in the swap logic */
n = arr.0
DO i = n TO 2 BY -1
  DO j = 1 TO i - 1
    k = j + 1
    IF arr.j > arr.k THEN DO
      /* Swap arr.j and arr.k */
      ???
    END
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal arr.1, 11, 'First element should be 11'
CALL assert_equal arr.2, 12, 'Second element should be 12'
CALL assert_equal arr.3, 22, 'Third element should be 22'
CALL assert_equal arr.4, 25, 'Fourth element should be 25'
CALL assert_equal arr.5, 34, 'Fifth element should be 34'
CALL assert_equal arr.6, 64, 'Sixth element should be 64'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
