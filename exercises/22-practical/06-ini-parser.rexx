/* Exercise: INI File Parser
 *
 * Parse INI-style configuration data. INI files have sections
 * in brackets and key=value pairs:
 *
 *   [database]
 *   host=localhost
 *   port=5432
 *
 * Strategy:
 * 1. Process each line of the config
 * 2. If a line starts with '[', extract the section name
 * 3. If a line contains '=', split into key and value
 * 4. Store in stems: config.SECTION.KEY = value
 *
 * We will simulate the config as words on separate lines using
 * a stem variable for input.
 *
 * Your task: Parse the INI data and store values in the config. stem.
 */

/* I AM NOT DONE */

/* INI data stored line by line */
lines.0 = 6
lines.1 = '[database]'
lines.2 = 'host=localhost'
lines.3 = 'port=5432'
lines.4 = '[app]'
lines.5 = 'name=myapp'
lines.6 = 'debug=true'

config. = ''
section = ''

DO i = 1 TO lines.0
  line = lines.i

  /* Check if this is a section header */
  IF LEFT(line, 1) = '[' THEN DO
    ???
  END
  ELSE DO
    /* Parse key=value using PARSE with '=' as literal delimiter */
    ???
    config.section.key = value
  END
END

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal config.DATABASE.HOST, 'localhost', 'database host should be localhost'
CALL assert_equal config.DATABASE.PORT, '5432', 'database port should be 5432'
CALL assert_equal config.APP.NAME, 'myapp', 'app name should be myapp'
CALL assert_equal config.APP.DEBUG, 'true', 'app debug should be true'
EXIT 0

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
