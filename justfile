# rexxlings - REXX learning exercises
# This justfile is the source of truth for build/test/lint.
# CI calls `just ci` and nothing else, so local and CI cannot drift.

# Run all CI checks (same as the CI workflow).
# This is what developers should run before pushing.
ci: fmt-check lint test build
    @echo "Safe to push - CI will pass."

# Format all code
fmt:
    cargo fmt --all

# Check formatting (CI mode - fails on diff)
fmt-check:
    cargo fmt --all -- --check

# Run clippy with warnings as errors
lint:
    cargo clippy --locked --workspace --all-targets -- -D warnings

# Run all tests
test:
    cargo test --locked --workspace --all-targets

# Build release binary
build:
    cargo build --locked --release

# Install the rexxlings binary into ~/.cargo/bin
install:
    cargo install --path . --locked --force

# Remove all build artifacts
clean:
    cargo clean

# Quick code stats: LOC, largest files, module tree.
# Requires `scc` (brew install scc · or · cargo install scc) and
# `cargo-modules` (cargo install cargo-modules) — both are dev-only,
# not in Cargo.toml. The cargo-modules call falls back to a hint if
# the tool is missing so the recipe still prints something useful.
stats:
    @echo "=== Workspace LOC ==="
    @scc src --no-cocomo
    @echo ""
    @echo "=== Largest Rust source files (top 15) ==="
    @scc src --by-file --no-cocomo -s lines -i rs | head -20
    @echo ""
    @echo "=== Module tree ==="
    @cargo modules structure --bin rexxlings 2>/dev/null \
      || echo "(install cargo-modules for the module tree: cargo install cargo-modules)"
