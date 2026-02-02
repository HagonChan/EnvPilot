ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "INSTALL.md"
apt-get update && apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version
open "alacritty/Cargo.toml"
cargo build --release
apt-get install -y g++
cargo build --release
cargo test
