# Hint: ADDRESS() — The Current Environment

`ADDRESS()` is a built-in function that returns the name of the
current command environment as a string.

```rexx
env = ADDRESS()
SAY env
```

This is different from the `ADDRESS` instruction which *sets* the
environment:

| Syntax       | Purpose                          |
|--------------|----------------------------------|
| `ADDRESS()`  | **Function** — returns env name  |
| `ADDRESS SYSTEM 'cmd'` | **Instruction** — runs a command |

Replace the `???` with `ADDRESS()`.
