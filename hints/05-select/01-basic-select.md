# Hint: Basic SELECT — Mapping Values

`SELECT` evaluates each `WHEN` condition in order and executes
the first one that is true:

```rexx
SELECT
  WHEN color = 'red'   THEN SAY 'Stop'
  WHEN color = 'green' THEN SAY 'Go'
  WHEN color = 'amber' THEN SAY 'Caution'
END
```

For the day mapping, replace each `???` with the correct day name
string (`'Wednesday'` and `'Thursday'`).

For the month mapping, write a new SELECT block:

```rexx
SELECT
  WHEN monthNum = 1  THEN monthName = 'January'
  WHEN monthNum = 6  THEN monthName = 'June'
  WHEN monthNum = 12 THEN monthName = 'December'
END
```
