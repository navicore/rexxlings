# Hint: REVERSE() — Flipping Strings

`REVERSE()` returns a string with all characters in reverse order:

```rexx
REVERSE('Hello')     /* 'olleH' */
REVERSE('abc')       /* 'cba' */
```

To check if a word is a palindrome, compare it to its reverse:

```rexx
word = 'racecar'
is_pal = (word == REVERSE(word))   /* '1' (true) */
```

Use `==` for strict (case-sensitive) comparison, or `=` for
case-insensitive. Since our test words are all lowercase, either
works.

The comparison `(word == REVERSE(word))` returns `1` if the
string reads the same forwards and backwards, `0` otherwise.
