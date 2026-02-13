/* Exercise: PARSE SOURCE — Getting Interpreter Information
 *
 * PARSE SOURCE provides information about the running program:
 *
 *   PARSE SOURCE sys invocation filename
 *
 * The exact values depend on the platform and how the script was
 * invoked, but it always returns something non-empty.
 *
 * - sys: the operating system (e.g., 'UNIX', 'WindowsNT')
 * - invocation: how the program was called (e.g., 'COMMAND')
 * - filename: the path of the running script
 *
 * Your task: Use PARSE SOURCE and verify it returns useful data.
 */

/* I AM NOT DONE */

/* Use PARSE SOURCE to get system info */
???

/* Check that we got something non-empty */
has_source = ???

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal has_source, 1, 'PARSE SOURCE should provide non-empty data'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
