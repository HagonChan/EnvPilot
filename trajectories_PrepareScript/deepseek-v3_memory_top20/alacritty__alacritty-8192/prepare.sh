ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
open "alacritty/Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.74.0 && rustup default 1.74.0
. $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
apt-get install -y libx11-dev libxrandr-dev libfontconfig1-dev libfreetype6-dev libxi-dev libxcursor-dev libxkbcommon-dev libwayland-dev pkg-config cmake gcc
cargo build --release
apt-get install -y build-essential
cargo build --release
cargo test
