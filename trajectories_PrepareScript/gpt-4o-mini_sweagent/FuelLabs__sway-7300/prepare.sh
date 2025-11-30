find_file '*.yml' .
open "/testbed/.github/workflows/ci.yml"
search_file 'cargo test' /testbed/.github/workflows/ci.yml
find_file Cargo.toml .
open "/testbed/Cargo.toml"
find_file 'README*' .
open "/testbed/README.md"
rustup --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh
find_file '*.sh' .
open "/testbed/ci_checks.sh"
insert '#!/usr/bin/env bash

# Install fuel-core node
cargo install fuel-core-bin --git https://github.com/FuelLabs/fuel-core --tag v0.24.3 --locked

# Run fuel-core node
fuel-core run --db-type in-memory --debug --snapshot ./.github/workflows/local-testnode &

# Wait for the node to start
sleep 10

# Run the CI checks
cargo install cargo-sort
cargo install cargo-generate
cargo install cargo-udeps

cargo clippy --all-features --all-targets -- -D warnings
cargo sort -w --check
cargo fmt --all -- --check
cargo build --locked --workspace --all-features --all-targets
cargo test --locked

# Clean up
kill $(jobs -p)' 0
bash setup_and_test.sh
create setup_and_test.sh
insert '#!/usr/bin/env bash

# Install fuel-core node
cargo install fuel-core-bin --git https://github.com/FuelLabs/fuel-core --tag v0.24.3 --locked

# Run fuel-core node
fuel-core run --db-type in-memory --debug --snapshot ./.github/workflows/local-testnode &

# Wait for the node to start
sleep 10

# Run the CI checks
cargo install cargo-sort
cargo install cargo-generate
cargo install cargo-udeps

cargo clippy --all-features --all-targets -- -D warnings
cargo sort -w --check
cargo fmt --all -- --check
cargo build --locked --workspace --all-features --all-targets
cargo test --locked

# Clean up
kill $(jobs -p)' 0
bash setup_and_test.sh
