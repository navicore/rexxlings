/* Exercise: Nested SELECT
 *
 * You can nest a SELECT inside a WHEN clause (using DO/END)
 * to handle subcategories:
 *
 *   SELECT
 *     WHEN category = 'A' THEN DO
 *       SELECT
 *         WHEN sub = 1 THEN ...
 *         WHEN sub = 2 THEN ...
 *         OTHERWISE ...
 *       END
 *     END
 *     ...
 *   END
 *
 * Your task: Classify a vehicle by its type and then by size.
 */

/* I AM NOT DONE */

vehicleType = 'car'
size = 'large'
answer = ''

SELECT
  WHEN vehicleType = 'car' THEN DO
    SELECT
      WHEN size = 'small' THEN answer = 'compact car'
      WHEN size = 'large' THEN answer = ???
      OTHERWISE answer = 'standard car'
    END
  END
  WHEN vehicleType = 'truck' THEN DO
    SELECT
      WHEN size = 'small' THEN answer = 'pickup'
      WHEN size = 'large' THEN answer = 'semi'
      OTHERWISE answer = ???
    END
  END
  OTHERWISE answer = 'unknown vehicle'
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal answer, 'full-size car', 'large car should be full-size car'

/* Now test with truck */
vehicleType = 'truck'
size = 'medium'
answer = ''

SELECT
  WHEN vehicleType = 'car' THEN DO
    SELECT
      WHEN size = 'small' THEN answer = 'compact car'
      WHEN size = 'large' THEN answer = 'full-size car'
      OTHERWISE answer = 'standard car'
    END
  END
  WHEN vehicleType = 'truck' THEN DO
    SELECT
      WHEN size = 'small' THEN answer = 'pickup'
      WHEN size = 'large' THEN answer = 'semi'
      OTHERWISE answer = 'standard truck'
    END
  END
  OTHERWISE answer = 'unknown vehicle'
END

CALL assert_equal answer, 'standard truck', 'medium truck should be standard truck'
CALL assert_true answer = 'standard truck', 'result should be standard truck'
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
