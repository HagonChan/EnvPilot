ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
sudo apt-get update && sudo apt-get install -y build-essential ripgrep shellcheck libssl-dev pkg-config
apt-get update && apt-get install -y build-essential ripgrep shellcheck libssl-dev pkg-config
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.77
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.77
source $HOME/.cargo/env
rustc --version && cargo --version
cargo test
apt-get install -y bash
open "tests/backticks.rs"
apt-get install -y python3
cargo test
open "tests/functions.rs"
export USER=testuser && cargo test
