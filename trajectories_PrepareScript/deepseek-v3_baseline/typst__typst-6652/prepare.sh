ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo build
apt install -y gcc-multilib libssl-dev pkg-config
cargo build
cargo test --workspace
