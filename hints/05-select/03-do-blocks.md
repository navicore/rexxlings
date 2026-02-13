# Hint: DO Blocks in SELECT

When a `WHEN` clause needs to execute more than one instruction,
use a `DO`/`END` block:

```rexx
SELECT
  WHEN level = 'high' THEN DO
    color = 'red'
    alert = 1
  END
  WHEN level = 'low' THEN DO
    color = 'green'
    alert = 0
  END
  OTHERWISE DO
    color = 'grey'
    alert = 0
  END
END
```

An admin should have all permissions set to `1`. Replace each
`???` with `1` to give the admin full access.
