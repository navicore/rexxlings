# Hint: IF/THEN/ELSE — Choosing Between Two Paths

When you need to execute more than one instruction in a branch,
wrap the instructions in a `DO`/`END` block:

```rexx
IF age >= 18 THEN DO
  status = 'adult'
  canVote = 'yes'
END
ELSE DO
  status = 'minor'
  canVote = 'no'
END
```

For a single instruction, you can keep it simple:

```rexx
IF score >= 50 THEN answer = 'pass'
ELSE answer = 'fail'
```

Replace each `???` with the correct string value. For the `score`
variable, add an `IF/THEN/ELSE` to set `answer` based on whether
`score >= 50`.
