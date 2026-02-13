# Hint: QUEUE — FIFO Order

The key difference between PUSH and QUEUE:

| Instruction | Adds to   | Order  |
|-------------|-----------|--------|
| PUSH        | **Top**   | LIFO   |
| QUEUE       | **Bottom**| FIFO   |

PULL always removes from the **top** in both cases.

```rexx
QUEUE 'red'
QUEUE 'green'
QUEUE 'blue'
```

After these three QUEUE instructions, the queue looks like (top to bottom):
- red
- green
- blue

So PULL gives you `RED` first (FIFO — first in, first out).

Remember: PULL uppercases the result, so `'red'` becomes `'RED'`.

Replace the `???` with three QUEUE statements.
