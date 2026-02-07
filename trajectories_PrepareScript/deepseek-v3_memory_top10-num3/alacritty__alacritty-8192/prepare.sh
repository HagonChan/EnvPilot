ls -la
open "Cargo.toml"
open "alacritty/Cargo.toml"
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libx11-dev libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libfontconfig1-dev libfreetype6-dev libxkbcommon-dev libwayland-dev libegl1-mesa-dev libgles2-mesa-dev cmake pkg-config gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.74.0 && rustup default 1.74.0
source $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
cargo build
apt-get install -y g++
cargo build
cargo test
