ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
sudo apt-get update && sudo apt-get install -y ripgrep shellcheck build-essential pkg-config libssl-dev
apt-get update && apt-get install -y ripgrep shellcheck build-essential pkg-config libssl-dev
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version
cargo test
apt-get install -y bash
which bash
find_file backticks.rs
open "/testbed/tests/backticks.rs"
apt-get install -y python3
cargo test
open "/testbed/tests/functions.rs"
export USER=testuser && cargo test
