ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
cargo --version
cargo install just
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo install just
just --version
just test
cargo test
