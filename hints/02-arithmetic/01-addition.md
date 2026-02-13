# Hint: Addition and Subtraction

REXX uses `+` for addition and `-` for subtraction, just like
most languages:

```rexx
sum = 10 + 5        /* sum is '15' */
diff = 10 - 5       /* diff is '5' */
```

You can chain operations:

```rexx
answer = 10 + 5 - 3   /* result is '12' */
```

And you can use variables in expressions:

```rexx
a = 50
answer = a + 15 - 20   /* result is '45' */
```

Remember: even though REXX values are strings, the arithmetic
operators treat them as numbers automatically.
