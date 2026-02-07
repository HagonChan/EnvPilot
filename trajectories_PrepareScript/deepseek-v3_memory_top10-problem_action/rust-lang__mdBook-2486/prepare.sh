ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
rustc --version
open "ci/install-rust.sh"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
apt-get update
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.74.0
. $HOME/.cargo/env
rustup install 1.74.0
rustup default 1.74.0
rustc --version
cargo build --locked
apt-get install -y libssl-dev clang pkg-config build-essential libclang-dev cmake
cargo build --locked
cargo test --locked
