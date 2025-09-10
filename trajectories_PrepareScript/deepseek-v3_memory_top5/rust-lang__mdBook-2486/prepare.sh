ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
rustup install 1.74.0 && rustup default 1.74.0
open "ci/install-rust.sh"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt update && apt install -y curl gcc make libssl-dev
apt install -y curl gcc make libssl-dev
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.74.0 && rustup default 1.74.0
. $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
rustup install 1.74.0 && rustup default 1.74.0
find_file rust-toolchain.toml
open "Cargo.toml"
rustup install stable && rustup default stable
rustup install 1.74.0 && rustup default 1.74.0
cargo test --locked
