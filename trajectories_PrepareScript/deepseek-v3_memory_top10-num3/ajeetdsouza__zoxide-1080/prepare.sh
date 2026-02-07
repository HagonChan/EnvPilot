ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
rustup install 1.85.0 && rustup default 1.85.0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.85.0 && rustup default 1.85.0
source $HOME/.cargo/env
rustup install 1.85.0 && rustup default 1.85.0
rustc --version
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo build
cargo install just
just lint test
cargo test
