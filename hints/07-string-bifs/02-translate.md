# Hint: TRANSLATE — Character Translation and Uppercasing

`TRANSLATE` has two forms:

**Uppercase (one argument):**
```rexx
TRANSLATE('hello')   /* => 'HELLO' */
```

**Character mapping (three arguments):**
```rexx
TRANSLATE(string, output_chars, input_chars)
```

Each character in `input_chars` is replaced by the character at the
same position in `output_chars`.

```rexx
TRANSLATE('a-b', ' ', '-')   /* '-' becomes ' ' => 'a b' */
```

For the vowel replacement, you need to list all vowels (both cases)
in the input and the replacement character repeated for each:

```rexx
TRANSLATE(text, '****', 'aeiou')   /* only covers lowercase */
```

Make sure your `output` string has the same number of characters as
your `input` string.
