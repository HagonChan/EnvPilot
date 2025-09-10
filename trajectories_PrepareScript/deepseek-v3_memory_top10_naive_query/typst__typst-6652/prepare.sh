ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup-init.sh && sh rustup-init.sh -y
rustup install 1.88.0 && rustup override set 1.88.0
source $HOME/.cargo/env
rustup install 1.88.0 && rustup override set 1.88.0
apt-get install -y gcc-multilib libssl-dev:i386
apt-get update
apt-get install -y gcc-multilib libssl-dev:i386
cargo test --workspace --no-fail-fast
apt-get install -y build-essential
cargo test --workspace --no-fail-fast
apt-get install -y pkg-config libssl-dev
cargo test --workspace --no-fail-fast
