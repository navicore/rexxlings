# Hint: ADDRESS SYSTEM — Running Shell Commands

The `ADDRESS` instruction tells REXX where to send commands:

```rexx
ADDRESS SYSTEM 'echo hello'
```

This runs `echo hello` in the system shell. After the command runs,
the special variable `RC` contains the return code (0 = success).

Replace the `???` with:

```rexx
ADDRESS SYSTEM 'echo hello'
```

Then remove the `/* I AM NOT DONE */` line.
