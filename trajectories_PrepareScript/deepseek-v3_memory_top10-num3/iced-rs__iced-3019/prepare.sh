ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
apt-get install -y libxkbcommon-dev libgtk-3-dev
rustup toolchain list
rustup toolchain install beta && rustup toolchain install 1.85
rustup toolchain list
cargo build
apt-get update && apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo build
cargo test --verbose --workspace --ignored --all-features
cargo test --verbose --workspace --all-features -- --ignored
cargo test --verbose --workspace --all-features
find_file '*test*'
ls -la target/debug/deps/test-*
ls -la target/debug/test-*
find target/debug -type f -executable
open "Cargo.toml"
cargo test --verbose
