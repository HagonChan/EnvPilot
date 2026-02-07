ls
open "Cargo.toml"
ls ci
open "ci/install-rust.sh"
apt-get install -y git curl bash build-essential pkg-config libssl-dev libclang-dev cmake
apt-get update
apt-get install -y git curl bash build-essential pkg-config libssl-dev libclang-dev cmake
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.74.0 && rustup default 1.74.0
. $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
cargo build --locked
cargo test
