ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Cargo.toml"
open "README.md"
sudo apt-get update && sudo apt-get install -y ripgrep shellcheck
apt-get update && apt-get install -y ripgrep shellcheck
cargo build
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustc cargo
cargo build
rustup update stable
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo build
cargo test
apt-get install -y bash
which bash
RUST_BACKTRACE=1 cargo test
SHELL=/usr/bin/bash RUST_BACKTRACE=1 cargo test
bash -c "echo Hello, World!"
open "./tests/functions.rs"
USER=testuser RUST_BACKTRACE=1 cargo test
USER=testuser SHELL=/usr/bin/bash RUST_BACKTRACE=1 cargo test
open "./tests/backticks.rs"
apt-get install -y python3
USER=testuser SHELL=/usr/bin/bash RUST_BACKTRACE=1 cargo test
