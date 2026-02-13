# Hint: String Keys — Stems as Maps

Stem variables can use any string as a key, making them work
like dictionaries or hash maps:

```rexx
color.SKY = 'blue'
color.GRASS = 'green'

thing = 'SKY'
SAY color.thing    /* prints: blue */
```

Important: REXX uppercases variable names, so the tail is always
resolved in uppercase. When you write `capital.country` and
`country` contains `'France'`, the tail resolves to `FRANCE`.

That is why you should set keys using uppercase:

```rexx
capital.FRANCE = 'Paris'
```

For this exercise, replace each `???` with the appropriate capital
city as a quoted string:

- `capital.FRANCE = 'Paris'`
- `capital.JAPAN = 'Tokyo'`
- `capital.BRAZIL = 'Brasilia'`
