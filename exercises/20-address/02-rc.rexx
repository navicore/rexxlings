/* Exercise: Return Codes — Checking RC
 *
 * After running a command with ADDRESS SYSTEM, the special variable
 * RC holds the return code:
 *
 *   ADDRESS SYSTEM 'echo test'
 *   IF RC = 0 THEN SAY 'Command succeeded'
 *
 * A return code of 0 means success. Non-zero usually means failure.
 *
 * Your task:
 * 1. Run a command that succeeds (like 'echo test')
 * 2. SAY whether it succeeded based on RC
 * 3. Run a command that fails (like 'test -f /no/such/file')
 * 4. SAY whether it failed based on RC
 */

/* I AM NOT DONE */

/* Run a command that should succeed */
???
SAY 'First command RC:' RC

/* Check if it succeeded */
IF RC = 0 THEN
  SAY 'Success!'
ELSE
  SAY 'Failed!'

/* Run a command that should fail */
???
SAY 'Second command RC:' RC

/* Check if it failed */
IF RC \= 0 THEN
  SAY 'Failed as expected!'
ELSE
  SAY 'Unexpected success!'
