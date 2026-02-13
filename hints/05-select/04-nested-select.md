# Hint: Nested SELECT

You can place a `SELECT` inside a `WHEN` clause by wrapping it
in `DO`/`END`:

```rexx
SELECT
  WHEN shape = 'circle' THEN DO
    SELECT
      WHEN radius > 10 THEN label = 'big circle'
      OTHERWISE label = 'small circle'
    END
  END
  OTHERWISE label = 'not a circle'
END
```

In this exercise, replace the two `???` placeholders:

1. A large car should be `'full-size car'`
2. A truck that is neither small nor large should be `'standard truck'`

The test section re-runs the SELECT with different values to verify
both branches work correctly.
