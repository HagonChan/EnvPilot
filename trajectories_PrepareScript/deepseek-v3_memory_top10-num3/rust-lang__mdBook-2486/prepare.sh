ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "ci/install-rust.sh"
apt-get update && apt-get install -y build-essential pkg-config libssl-dev musl-dev musl-tools gcc-aarch64-linux-gnu
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env && rustup install 1.74.0 && rustup default 1.74.0
rustc --version && cargo --version
cargo build --locked
cargo test
