# Hint: LENGTH() — Measuring Strings

The `LENGTH()` function takes one argument and returns the number
of characters in it:

```rexx
len = LENGTH('Hello')     /* len is '5' */
```

Spaces, punctuation, and special characters all count:

```rexx
len = LENGTH('Hi there')  /* len is '8' */
len = LENGTH('a b')       /* len is '3' */
```

An empty string has length 0:

```rexx
len = LENGTH('')          /* len is '0' */
```

You can pass a variable to LENGTH:

```rexx
msg = 'I love REXX'
len = LENGTH(msg)         /* len is '11' */
```

For `'Hello, World!'`, count each character including the comma,
space, and exclamation mark: H-e-l-l-o-,-[space]-W-o-r-l-d-! = 13.
