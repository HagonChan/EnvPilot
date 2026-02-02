ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "INSTALL.md"
open "Cargo.toml"
open "alacritty/Cargo.toml"
apt update && apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.74.0
source $HOME/.cargo/env
rustup install 1.74.0
rustup default 1.74.0
rustc --version
cargo build
apt install -y build-essential
cargo build
cargo test
