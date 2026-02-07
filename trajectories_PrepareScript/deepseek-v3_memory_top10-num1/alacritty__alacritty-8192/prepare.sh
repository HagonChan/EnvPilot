ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
apt-get install -y scdoc ncurses-term
cargo build --release
apt-get update && apt-get install -y pkg-config libssl-dev libx11-dev libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev
cargo build --release
apt-get install -y build-essential
cargo build --release
apt-get install -y libfontconfig1-dev
cargo build --release
cargo test

