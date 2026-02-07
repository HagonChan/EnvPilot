ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Cargo.toml"
open "README.md"
ls -la justfile
open "justfile"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
cargo build
apt-get update && apt-get install -y build-essential
cargo build
cargo test --all
RUST_BACKTRACE=1 cargo test --all -- --nocapture
