ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
cargo install just
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to $HOME/.cargo/bin
just --version
just test
edit 'test:
    nix-shell --cores 0 --pure --run '"'"'cargo nextest run --all-features --no-fail-fast --workspace '"'"'' 'test:
    cargo nextest run --all-features --no-fail-fast --workspace'
open "justfile"
cargo nextest run --all-features --no-fail-fast --workspace
cargo install cargo-nextest
cargo install --locked cargo-nextest
cargo test --all-features --workspace
apt-get update

apt-get install -y build-essential pkg-config libssl-dev
cargo test --all-features --workspace
apt-get install -y zsh
cargo test --all-features --workspace
