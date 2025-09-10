ls -la
open "rust-toolchain.toml"
ls -la .github/workflows
open ".github/workflows/build.yml"
rustup toolchain install 1.65.0 --profile minimal --components rustfmt,rust-src
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.65.0
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.65.0
rustup component add rustfmt rust-src
source $HOME/.cargo/env
rustup component add rustfmt rust-src
apt-get install -y libssl-dev pkg-config build-essential
which tree-sitter
cargo install tree-sitter-cli
cargo search tree-sitter-cli
cargo install tree-sitter-cli --version 0.20.0
cargo install tree-sitter-cli --version 0.19.0
cargo build
cargo test --workspace
open "Cargo.toml"
cargo build --package helix-term
open "README.md"
