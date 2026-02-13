# Hint: SIGNAL label — Jump to a Label

`SIGNAL` transfers control to a label, skipping everything in between:

```rexx
SAY 'before'
SIGNAL my_label
SAY 'this is skipped'
my_label:
SAY 'after'
```

This prints:
```
before
after
```

For this exercise, replace `???` with:

```rexx
SIGNAL correct
```

This will jump over `answer = 'still wrong'` and land at `correct:`
where `answer` is set to `'right'`.
