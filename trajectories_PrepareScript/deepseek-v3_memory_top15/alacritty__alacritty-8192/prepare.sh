ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
open "alacritty/Cargo.toml"
cargo --version
apt-get update && apt-get install -y curl && curl https://sh.rustup.rs -sSf | sh -s -- -y && . $HOME/.cargo/env
curl https://sh.rustup.rs -sSf | sh -s -- -y && . $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
rustc --version && cargo --version
cargo build
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo build
cargo test
apt-get install -y libfontconfig1-dev
cargo test
