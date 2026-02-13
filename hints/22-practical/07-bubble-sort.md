# Hint: Bubble Sort

The swap logic is the classic three-variable swap:

```rexx
temp = arr.j
arr.j = arr.k
arr.k = temp
```

1. Save `arr.j` in a temporary variable
2. Copy `arr.k` into `arr.j`
3. Copy the saved value into `arr.k`

This is the same pattern used in virtually every programming language.

Replace the `???` with these three lines. The surrounding loop
structure and comparison are already provided.
