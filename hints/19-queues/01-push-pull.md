# Hint: PUSH and PULL — LIFO Stack

PUSH adds items to the **top** of the queue, and PULL takes from the **top**.
This gives you Last-In-First-Out (LIFO) behavior, like a stack.

```rexx
PUSH 'first'
PUSH 'second'
PUSH 'third'
```

After these three pushes, the queue looks like (top to bottom):
- third
- second
- first

So `PULL` will get `third` first, then `second`, then `first`.

**Important:** PULL always uppercases the value it returns!
So even though you pushed `'third'`, you pull back `'THIRD'`.

Replace the `???` with three PUSH statements for `'first'`, `'second'`,
and `'third'` in that order.
