ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
cargo test --workspace
apt-get install -y libx11-dev libxcb1-dev libxkbcommon-dev libwayland-dev libssl-dev pkg-config
cargo test --workspace
apt-get install -y build-essential
cargo test --workspace
apt-get install -y libfontconfig1-dev
cargo test --workspace
