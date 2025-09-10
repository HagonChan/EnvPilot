ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.77
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.77
source $HOME/.cargo/env
apt-get install -y ripgrep shellcheck
rustc --version
cargo test
apt-get install -y build-essential
cargo test
apt-get install -y bash
which bash
open ".github/workflows/ci.yaml"
RUST_BACKTRACE=1 cargo test functions::env_var_functions -- --nocapture
open "tests/functions.rs"
export USER=testuser && RUST_BACKTRACE=1 cargo test functions::env_var_functions -- --nocapture
open "tests/backticks.rs"
apt-get install -y python3
cargo test backticks::trailing_newlines_are_stripped
cargo test
