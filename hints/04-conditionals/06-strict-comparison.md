# Hint: Strict vs Normal Comparison

REXX has two comparison modes:

**Normal comparison (`=`, `\=`):**
Strips leading and trailing blanks from both operands before comparing.

```rexx
'  hello  ' = 'hello'    /* 1 (true) — blanks stripped */
'  hello  ' \= 'hello'   /* 0 (false) — they are equal */
```

**Strict comparison (`==`, `\==`):**
Compares strings exactly, character by character, including all blanks.

```rexx
'  hello  ' == 'hello'   /* 0 (false) — blanks matter */
'  hello  ' \== 'hello'  /* 1 (true)  — they differ */
'hello' == 'hello'        /* 1 (true)  — identical */
```

Think about what each comparison returns (1 for true, 0 for false)
and replace each `???` with the correct value.
