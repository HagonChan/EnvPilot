ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
sudo apt-get update && sudo apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
apt-get update && apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.77
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.77
. $HOME/.cargo/env
rustc --version
cargo build
cargo test
open "tests/backticks.rs"
apt-get install -y python3
cargo test
open "tests/functions.rs"
export USER=root && cargo test
