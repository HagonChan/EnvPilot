ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install beta && rustup toolchain install 1.85
. $HOME/.cargo/env
rustup toolchain install beta && rustup toolchain install 1.85
apt-get install -y libxkbcommon-dev libgtk-3-dev
apt-get update
apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --workspace --all-features
apt-get install -y build-essential
cargo test --workspace --all-features
apt-get install -y libssl-dev
cargo test --workspace --all-features
