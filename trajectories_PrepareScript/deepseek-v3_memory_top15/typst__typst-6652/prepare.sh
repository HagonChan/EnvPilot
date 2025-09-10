ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.88.0
source $HOME/.cargo/env
rustup install 1.88.0
rustup default 1.88.0
apt-get update && apt-get install -y gcc-multilib libssl-dev:i386 pkg-config:i386 libssl-dev pkg-config gcc
apt-get install -y gcc-multilib libssl-dev pkg-config gcc
cargo test --workspace --no-fail-fast
