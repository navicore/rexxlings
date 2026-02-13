# Hint: NOP — The No-Operation Placeholder

`NOP` stands for "No Operation." It is a valid REXX instruction
that does absolutely nothing. It is useful when REXX syntax requires
an instruction but you do not want any action:

```rexx
IF alreadyDone THEN NOP
ELSE SAY 'Processing...'
```

You can also use it in the ELSE branch:

```rexx
IF needsWork THEN SAY 'Working on it...'
ELSE NOP
```

In this exercise:

1. For the first IF: when `onSale` is true (1), we want to do
   nothing (keep the price as-is). Replace the THEN branch with `NOP`.

2. For the second IF: when `fuelLevel` is not low, we want to do
   nothing. Add an `ELSE NOP` after the warning assignment.
