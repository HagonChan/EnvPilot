ls
open "Cargo.toml"
find_file rust-toolchain.toml
find_file '*.yml' .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
apt-get install -y libxkbcommon-dev libgtk-3-dev
rustup toolchain list
rustup toolchain install beta
rustup toolchain install 1.85
rustup toolchain list
cargo test
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo test
