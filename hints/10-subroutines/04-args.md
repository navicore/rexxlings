# Hint: PARSE ARG — Multiple Arguments

When you call a subroutine with multiple arguments, separate them
with commas:

```rexx
CALL myFunc 'Alice', 30
```

Inside the subroutine, `PARSE ARG` splits them by commas:

```rexx
myFunc: PROCEDURE
  PARSE ARG name, age
  SAY name 'is' age 'years old'
  RETURN
```

For this exercise, you need a subroutine that:
1. Starts with a label: `add:`
2. Uses `PROCEDURE` to isolate variables
3. Uses `PARSE ARG a, b` to get two arguments
4. Returns the sum: `RETURN a + b`
