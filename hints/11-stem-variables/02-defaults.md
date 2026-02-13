# Hint: Stem Defaults — Initializing All Tails

Assigning to a stem with no tail sets the default for all tails:

```rexx
count. = 0
```

After this, any `count.xyz` that has not been explicitly set returns `0`.

```rexx
count. = 0
count.cats = 3
SAY count.cats    /* 3 — explicitly set */
SAY count.dogs    /* 0 — returns the default */
```

This is different from not setting a default at all. Without the
default, `count.dogs` would resolve to the literal string `COUNT.DOGS`
(REXX uppercases uninitialized variables).

For this exercise, add one line before the specific score assignments:

```rexx
score. = 0
```
