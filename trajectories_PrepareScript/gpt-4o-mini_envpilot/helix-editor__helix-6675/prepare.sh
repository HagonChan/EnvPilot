
find_file '*.yml' .
open "/testbed/.github/workflows/build.yml"
apt-get update && apt-get install -y curl git build-essential pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.65.0
. $HOME/.cargo/env
rustup install 1.65.0
cargo build --release
cargo build
cargo --version
cargo test
open "/testbed/Cargo.toml"
cargo build --package helix-term
find_file helix-term .
find_file helix-core .
find_file 'README*' .
open "/testbed/README.md"
cargo test --workspace
open "/testbed/Cargo.lock"
cargo clean
cargo build
cargo check
top -b -n 1
find_file '*_test.rs' src
ls -la
find_file '*' helix-term
cargo test --package helix-term
find_file '*' helix-core
cargo test --package helix-core
cargo test --package helix-term
