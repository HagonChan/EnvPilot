ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
cargo install just
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo install just
just lint test
open "justfile"
cargo +nightly fmt --all --check
cargo +nightly fmt --all --check
cargo clippy --all-features --all-targets -- -Dwarnings
cargo test
