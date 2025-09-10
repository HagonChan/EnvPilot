ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
open "Cargo.toml"
cargo build --locked
apt-get install -y build-essential
cargo build --locked
cargo test --all-features
open "README.md"
open "Cargo.toml"
cargo test --all-features -- --nocapture
cargo test --lib
cargo test --bin zoxide
