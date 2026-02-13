/* Exercise: PARSE ARG — Parse Subroutine Arguments */

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

format_name: PROCEDURE
  PARSE ARG first, last
  RETURN STRIP(last) || ', ' || STRIP(first)

get_domain: PROCEDURE
  PARSE ARG . '@' domain
  RETURN domain

swap: PROCEDURE
  PARSE ARG a, b
  RETURN STRIP(b) STRIP(a)

assert_equal: PROCEDURE
  PARSE ARG actual, expected, message
  IF actual = expected THEN RETURN
  SAY 'FAIL:' message
  SAY '  Expected:' expected
  SAY '  Actual  :' actual
  EXIT 1
