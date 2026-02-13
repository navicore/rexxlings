# Hint: INI File Parser

PARSE with literal patterns is perfect for this task.

**Extracting section name** from `[database]`:
```rexx
PARSE VAR line '[' section ']'
section = TRANSLATE(section)
```
This uses `[` and `]` as literal delimiters. `TRANSLATE` uppercases
the section name so it matches the stem tail (REXX stems are
case-sensitive for tails derived from variable values).

**Extracting key=value** from `host=localhost`:
```rexx
PARSE VAR line key '=' value
key = TRANSLATE(key)
```
This splits at `=` and uppercases the key.

Then store it:
```rexx
config.section.key = value
```

The compound variable `config.section.key` uses the values of both
`section` and `key` as tails, so `config.DATABASE.HOST` stores
`'localhost'`.
