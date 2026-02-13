/* Exercise: PARSE ARG — Parse Subroutine Arguments
 *
 * Inside a subroutine (after a label with PROCEDURE), PARSE ARG
 * splits the arguments passed via CALL:
 *
 *   CALL my_sub 'Alice', 30
 *   ...
 *   my_sub: PROCEDURE
 *     PARSE ARG name, age
 *     ...
 *     RETURN result
 *
 * Commas separate argument groups. Within each group, the normal
 * parse template applies (word splitting, literals, positions).
 *
 * Your task: Write subroutines that use PARSE ARG correctly.
 */

/* I AM NOT DONE */

/* Call a subroutine that formats a full name */
CALL format_name 'Alice', 'Smith'
formatted = RESULT

/* Call a subroutine that extracts a domain from an email */
CALL get_domain 'user@example.com'
domain = RESULT

/* Call a subroutine that swaps two words */
CALL swap 'hello', 'world'
swapped = RESULT

/* ===== Tests — do not edit below this line ===== */
CALL assert_equal formatted, 'Smith, Alice', 'name formatted as last, first'
CALL assert_equal domain, 'example.com', 'domain extracted from email'
CALL assert_equal swapped, 'world hello', 'words swapped'
EXIT 0

/* Fix this subroutine: parse the two arguments and return 'Last, First' */
format_name: PROCEDURE
  PARSE ARG first     /* Fix: need to parse both arguments */
  RETURN first

/* Fix this subroutine: parse the email at '@' and return the domain */
get_domain: PROCEDURE
  PARSE ARG email     /* Fix: parse the email to extract domain */
  RETURN email

/* Fix this subroutine: parse two arguments and return them swapped */
swap: PROCEDURE
  PARSE ARG a         /* Fix: need to parse both arguments */
  RETURN a

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
