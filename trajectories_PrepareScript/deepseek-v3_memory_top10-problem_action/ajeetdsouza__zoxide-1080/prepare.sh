ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
cargo install just
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo install just
just --version
just test
curl -L https://nixos.org/nix/install | sh
cargo install cargo-nextest
cargo test --all-features --workspace
