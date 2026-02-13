/* Exercise: Return Codes — Checking RC */

/* Run a command that should succeed */
ADDRESS SYSTEM 'echo test'
SAY 'First command RC:' RC

/* Check if it succeeded */
IF RC = 0 THEN
  SAY 'Success!'
ELSE
  SAY 'Failed!'

/* Run a command that should fail */
ADDRESS SYSTEM 'test -f /no/such/file'
SAY 'Second command RC:' RC

/* Check if it failed */
IF RC \= 0 THEN
  SAY 'Failed as expected!'
ELSE
  SAY 'Unexpected success!'
