ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.85.0 && rustup default 1.85.0
source $HOME/.cargo/env
rustup install 1.85.0 && rustup default 1.85.0
rustc --version && cargo --version
cargo build
apt-get install -y build-essential
cargo build
cargo test
