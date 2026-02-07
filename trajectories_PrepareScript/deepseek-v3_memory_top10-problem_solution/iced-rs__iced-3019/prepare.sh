ls
open "README.md"
open "Cargo.toml"
ls .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install stable beta 1.85
source $HOME/.cargo/env
rustup toolchain install stable beta 1.85
apt-get install -y libxkbcommon-dev libgtk-3-dev
rustup default stable
cargo test
cargo test
apt-get install -y gcc
cargo test
