# Hint: DO i = start TO end WHILE condition

The `WHILE` clause in a DO loop adds an extra exit condition. The loop
continues only while BOTH the counter is within range AND the WHILE
condition is true:

```rexx
total = 0
DO i = 1 TO 100 WHILE total < 50
  total = total + i
END
/* Stops when total >= 50, even though i hasn't reached 100 */
```

The WHILE condition is checked BEFORE each iteration executes.

For this exercise, you need to find the right condition so that:
- The loop adds 1+2+3+4+5 = 15
- It stops before adding 6 (which would make total = 21)

Think: what should `total` be less than for the loop to continue?
The condition `total < 15` means the loop enters when total is 10
(before adding 5, making it 15), but stops when total is 15
(before adding 6).

Replace `???` with the WHILE condition.
