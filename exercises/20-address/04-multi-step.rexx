/* Exercise: Multi-Step Commands
 *
 * You can run multiple shell commands in sequence, each with
 * its own ADDRESS SYSTEM call:
 *
 *   ADDRESS SYSTEM 'echo Step 1'
 *   ADDRESS SYSTEM 'echo Step 2'
 *
 * Each command sets RC independently, so you can check the
 * return code after each one.
 *
 * Your task: Run three echo commands in sequence and check
 * that each one succeeds (RC = 0). Count how many succeeded.
 * This exercise is compile-mode — it just needs to run
 * without errors.
 */

/* I AM NOT DONE */

success_count = 0

/* Run three commands, counting successes */
???
IF RC = 0 THEN success_count = success_count + 1

???
IF RC = 0 THEN success_count = success_count + 1

???
IF RC = 0 THEN success_count = success_count + 1

SAY 'Commands succeeded:' success_count 'of 3'
