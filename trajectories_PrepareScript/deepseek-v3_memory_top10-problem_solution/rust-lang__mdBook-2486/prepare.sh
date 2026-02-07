ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "Cargo.toml"
apt-get update && apt-get install -y git curl build-essential pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.74.0
source $HOME/.cargo/env
rustc --version
cargo build --locked
cargo test
