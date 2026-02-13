# Hint: Multi-Step Commands

Each `ADDRESS SYSTEM` call runs one shell command and sets `RC`:

```rexx
ADDRESS SYSTEM 'echo Step 1'
IF RC = 0 THEN SAY 'Step 1 succeeded'

ADDRESS SYSTEM 'echo Step 2'
IF RC = 0 THEN SAY 'Step 2 succeeded'
```

Replace each `???` with an `ADDRESS SYSTEM` call. For example:

```rexx
ADDRESS SYSTEM 'echo Step 1'
```

Any simple command that succeeds (returns 0) will work. The `echo`
command is a safe choice because it always succeeds.
