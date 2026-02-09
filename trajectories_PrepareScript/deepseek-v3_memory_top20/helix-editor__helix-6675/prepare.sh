ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "rust-toolchain.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install 1.65.0
. $HOME/.cargo/env
rustup toolchain install 1.65.0
rustup default 1.65.0
apt-get install -y build-essential pkg-config libssl-dev
apt-get clean
apt-get install -y build-essential pkg-config libssl-dev
apt-get install -y pkg-config libssl-dev
cargo build --release
cargo test --workspace
