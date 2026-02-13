# Hint: Multiple Templates — Parsing Different Parts

Positional patterns in PARSE let you extract fixed-width fields.
A number in the template means "start at this column position":

```rexx
record = 'JOHN  DOE   NYC'
PARSE VAR record 1 first_name 7 last_name 13 city
```

This extracts:
- `first_name` = columns 1-6 (`'JOHN  '`)
- `last_name` = columns 7-12 (`'DOE   '`)
- `city` = column 13 onward (`'NYC'`)

You can also use relative positions with `+`:

```rexx
PARSE VAR record first_name +6 last_name +6 city
```

This takes 6 characters for `first_name`, then 6 for `last_name`,
then the rest for `city`.

Use `STRIP()` to remove leading/trailing spaces from the extracted
values if needed. The tests already call STRIP, so you just need
to get the PARSE template right.
