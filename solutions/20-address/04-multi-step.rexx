/* Exercise: Multi-Step Commands */

success_count = 0

/* Run three commands, counting successes */
ADDRESS SYSTEM 'echo Step 1'
IF RC = 0 THEN success_count = success_count + 1

ADDRESS SYSTEM 'echo Step 2'
IF RC = 0 THEN success_count = success_count + 1

ADDRESS SYSTEM 'echo Step 3'
IF RC = 0 THEN success_count = success_count + 1

SAY 'Commands succeeded:' success_count 'of 3'
