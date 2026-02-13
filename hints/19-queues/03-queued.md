# Hint: QUEUED() — Counting Queue Items

`QUEUED()` is a built-in function that returns the number of items
currently on the data queue.

```rexx
PUSH 'a'
PUSH 'b'
PUSH 'c'
SAY QUEUED()   /* prints: 3 */
```

For the first `???`, push any 4 items:

```rexx
PUSH 'one'
PUSH 'two'
PUSH 'three'
PUSH 'four'
```

For the second `???`, call `QUEUED()` to get the current count:

```rexx
count_after_push = QUEUED()
```

For the third `???`, call `QUEUED()` again after the loop empties the queue.

The DO WHILE loop is already written for you — it pulls items until
the queue is empty.
