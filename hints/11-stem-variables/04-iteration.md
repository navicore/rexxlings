# Hint: Iterating Stems — Using a Key List

Since REXX stems do not know which tails are set, you maintain
a separate list of keys. The `WORDS()` and `WORD()` built-in
functions help you iterate:

```rexx
keys = 'cat dog fish'
pet.cat = 'Whiskers'
pet.dog = 'Rex'
pet.fish = 'Nemo'

DO i = 1 TO WORDS(keys)
  key = WORD(keys, i)
  SAY key ':' pet.key
END
```

- `WORDS(keys)` returns the number of words in the string (3)
- `WORD(keys, i)` returns the i-th word

For this exercise, you need to set three prices:

```rexx
price.apple = 2
price.bread = 3
price.milk = 4
```

The iteration loop and result building are already provided.
Note that the keys in `items` are lowercase, and when used as
`price.key`, REXX resolves the value of `key` (e.g., `apple`)
and then uppercases it to look up `price.APPLE`. Since you set
`price.apple`, REXX stores it as `price.APPLE` internally.
