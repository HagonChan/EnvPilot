find_file '*.yml' .
open "/testbed/.github/workflows/ci.yml"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh -y
apt update
apt search rust
apt install cargo -y
find_file Cargo.toml
open "/testbed/Cargo.toml"
cargo build --workspace
apt install pkg-config -y
cargo build --workspace
apt install libfontconfig1-dev -y
cargo build --workspace
apt install build-essential -y
cargo build --workspace
cargo test --workspace
