ls -la
open "rust-toolchain.toml"
ls -la .github/workflows
open ".github/workflows/build.yml"
rustup install 1.65.0 && rustup default 1.65.0
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl build-essential
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.65.0 && rustup default 1.65.0
source $HOME/.cargo/env
rustup install 1.65.0 && rustup default 1.65.0
apt-get install -y libssl-dev pkg-config
cargo --version && rustc --version
cargo test --workspace
cargo test
