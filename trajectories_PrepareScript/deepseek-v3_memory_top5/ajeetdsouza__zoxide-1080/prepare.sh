ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
open "README.md"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version
cargo install just
apt-get install -y build-essential
cargo install just
just --version
just lint test
open "justfile"
just test
cargo test --no-fail-fast --workspace
