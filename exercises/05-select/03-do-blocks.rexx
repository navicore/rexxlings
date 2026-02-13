/* Exercise: DO Blocks in SELECT
 *
 * A WHEN clause executes a single instruction. To execute
 * multiple instructions, wrap them in DO/END:
 *
 *   SELECT
 *     WHEN condition THEN DO
 *       instruction1
 *       instruction2
 *     END
 *     ...
 *   END
 *
 * Your task: Set multiple variables in each WHEN clause.
 */

/* I AM NOT DONE */

role = 'admin'
canRead = 0
canWrite = 0
canDelete = 0

SELECT
  WHEN role = 'admin' THEN DO
    canRead = ???
    canWrite = ???
    canDelete = ???
  END
  WHEN role = 'editor' THEN DO
    canRead = 1
    canWrite = 1
    canDelete = 0
  END
  WHEN role = 'viewer' THEN DO
    canRead = 1
    canWrite = 0
    canDelete = 0
  END
  OTHERWISE DO
    canRead = 0
    canWrite = 0
    canDelete = 0
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal canRead, '1', 'admin should be able to read'
CALL assert_equal canWrite, '1', 'admin should be able to write'
CALL assert_equal canDelete, '1', 'admin should be able to delete'
CALL assert_true canRead & canWrite & canDelete, 'admin should have all permissions'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1

assert_true: PROCEDURE
  PARSE ARG condition, message
  IF condition THEN RETURN
  SAY 'FAIL:' message
  EXIT 1
