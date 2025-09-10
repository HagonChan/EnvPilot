ls
open "Cargo.toml"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.74.0 && rustup override set 1.74.0
. $HOME/.cargo/env
rustup install 1.74.0 && rustup override set 1.74.0
rustc --version
apt-get install -y gcc make libssl-dev
apt-get update
apt-get install -y gcc make libssl-dev
cargo build
cargo test
