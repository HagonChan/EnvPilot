ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
scroll_down
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
sudo apt-get update && sudo apt-get install -y curl
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
apt-get install -y ripgrep shellcheck
cargo test --all
open "Cargo.toml"
cargo build
apt-get install -y build-essential
cargo build
cargo test --all
apt-get install -y dash
apt-get install -y bash
ls -la /bin/sh
ln -sf /bin/bash /bin/sh
cargo test --all
open "tests/backticks.rs"
apt-get install -y python3
cargo test --all
open "tests/functions.rs"
export USER=root
cargo test --all
