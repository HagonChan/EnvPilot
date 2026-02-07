ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
open "README.md"
open "INSTALL.md"
apt update
apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
apt install cmake pkg-config -y
apt install libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y
rustup --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install curl -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal
. "$HOME/.cargo/env"
cargo --version && rustc --version
cargo build --release
apt install g++ -y
cargo build --release
cargo test
