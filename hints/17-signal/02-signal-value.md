# Hint: SIGNAL VALUE — Computed Jump

`SIGNAL VALUE expression` evaluates the expression and jumps to the
label matching the result:

```rexx
target = 'option_b'
SIGNAL VALUE target
/* Jumps to the label named 'option_b' */
```

The expression can be a variable, a function call, or any expression
that produces a valid label name.

For this exercise, the test expects `answer` to be `'green'`, which
means the program should jump to `label_green`.

Set `target` to the string `'label_green'`:

```rexx
target = 'label_green'
```
