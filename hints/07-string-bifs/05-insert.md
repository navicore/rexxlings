# Hint: INSERT — Add Text at a Position

`INSERT` places new text into an existing string without overwriting:

```rexx
INSERT(new, target, position)
```

- `position = 0` inserts at the very beginning
- `position = 3` inserts after the 3rd character

```rexx
INSERT(' ', 'HelloWorld', 5)   /* => 'Hello World' */
```

Unlike OVERLAY, INSERT does not replace characters. It pushes
everything after `position` to the right.

To insert at the end of a string, use `LENGTH(string)` as the
position:

```rexx
INSERT('!', text, LENGTH(text))   /* appends '!' */
```
