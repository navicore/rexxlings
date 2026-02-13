# rexxlings

Interactive exercises for learning REXX, a classic scripting language.

Inspired by [rustlings](https://github.com/rust-lang/rustlings), rexxlings guides you through REXX programming concepts via small exercises that you fix and complete in your editor.

## Prerequisites

- **Rust toolchain** (to build rexxlings): [rustup.rs](https://rustup.rs)
- **rexx interpreter** ([patch-rexx](https://github.com/navicore/patch-rexx)): must be in your `PATH`

## Getting Started

```sh
# Build
cargo build --release

# Run in the project directory (watch mode starts automatically)
cargo run

# Or install globally
cargo install --path .
rexxlings
```

Watch mode monitors your exercise files and automatically re-checks when you save.

## How It Works

1. Rexxlings presents exercises one at a time, starting with the basics
2. Open the exercise file in your editor and follow the instructions in the comment header
3. Fix the code, then delete the `/* I AM NOT DONE */` marker
4. Rexxlings detects the change and advances to the next exercise

## Commands

| Command | Description |
|---------|-------------|
| `rexxlings` | Start watch mode (default) |
| `rexxlings list` | Show all exercises with status |
| `rexxlings hint` | Show hint for current exercise |
| `rexxlings verify` | Check all exercises |
| `rexxlings next` | Skip to the next exercise |
| `rexxlings reset [name]` | Reset an exercise |
| `rexxlings init [dir]` | Extract exercises to a new directory |

### Chapter Filter

```sh
rexxlings watch --chapter 07
rexxlings list --chapter 03
```

## Curriculum

135 exercises across 23 chapters:

### Part 1: Foundations
- **00-intro** — Hello world, comments, string literals
- **01-variables** — SAY, assignment, uninitialized variables, concatenation
- **02-arithmetic** — Operators, precedence, comparison, logical operators
- **03-strings-intro** — LENGTH, SUBSTR, LEFT, RIGHT, COPIES, REVERSE, POS

### Part 2: Control Flow
- **04-conditionals** — IF/THEN/ELSE, nested IF, NOP, compound conditions, strict comparison
- **05-select** — SELECT/WHEN/END, OTHERWISE, DO blocks, nested SELECT, FizzBuzz
- **06-do-loops** — DO/END, counted loops, FOREVER, WHILE, UNTIL, LEAVE, ITERATE

### Part 3: String Processing
- **07-string-bifs** — STRIP, TRANSLATE, SPACE, OVERLAY, INSERT, DELSTR, CHANGESTR, COMPARE
- **08-word-bifs** — WORDS, WORD, WORDINDEX, WORDLENGTH, SUBWORD, WORDPOS, DELWORD
- **09-parse** — Word splitting, literal patterns, positional patterns, dot placeholder, PARSE VALUE

### Part 4: Subroutines & Data
- **10-subroutines** — CALL/RETURN, PROCEDURE, EXPOSE, ARG, function syntax, recursion
- **11-stem-variables** — Compound variables, defaults, string keys, multi-dimensional, patterns

### Part 5: Numeric Features
- **12-numeric-bifs** — ABS, SIGN, MAX, MIN, TRUNC, FORMAT, RANDOM
- **13-conversions** — D2X, X2D, C2D, D2C, C2X, X2C, B2X, X2B, DATATYPE

### Part 6: Advanced Features
- **14-advanced-parse** — Multi-template, PARSE UPPER, variable patterns, PARSE SOURCE, CSV parsing
- **15-advanced-do** — Computed bounds, DO WHILE+TO combos, loop idioms
- **16-interpret** — Dynamic code execution with INTERPRET
- **17-signal** — SIGNAL for jumps and error trapping (SYNTAX, NOVALUE)
- **18-numeric-precision** — NUMERIC DIGITS, large numbers, FUZZ, FORM, 100!

### Part 7: I/O & System
- **19-queues** — PUSH/PULL (LIFO), QUEUE (FIFO), QUEUED()
- **20-address** — ADDRESS SYSTEM, return codes, shell integration
- **21-date-time** — DATE(), TIME(), date formats, XRANGE

### Part 8: Practical Challenges
- **22-practical** — Word frequency, Caesar cipher, palindrome, Roman numerals, bubble sort, RPN calculator, text formatter, and more

## License

MIT
