find_file '*.yml' .
open ".github/workflows/ci.yml"
find_file Cargo.toml .
open "Cargo.toml"
sudo apt update && sudo apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
dpkg --add-architecture i386 && apt update
apt install -y libssl-dev:i386 pkg-config:i386
cargo build --release && cargo test
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh
rustc --version
find_file '*setup*' .
open "docs/guides/page-setup.md"
