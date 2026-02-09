ls
open "Cargo.toml"
open "README.md"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version
cargo install --path .
apt-get install -y build-essential pkg-config libssl-dev libclang-dev
cargo install --path .
cargo test
