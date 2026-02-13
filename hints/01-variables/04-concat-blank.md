# Hint: Blank Concatenation

In REXX, when you write two values next to each other separated
by a space, REXX joins them together with a single space between
them. This is called "blank concatenation."

```rexx
a = 'Hello'
b = 'World'
answer = a b        /* result is 'Hello World' */
```

You can chain more than two values:

```rexx
x = 'one'
y = 'two'
z = 'three'
answer = x y z      /* result is 'one two three' */
```

Use variable names (not quoted strings) on the right side of
the assignment, separated by spaces.
