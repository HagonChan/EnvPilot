ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y ripgrep shellcheck build-essential libssl-dev pkg-config
source $HOME/.cargo/env
rustc --version
cargo test
which sh || apt-get install -y dash
open "tests/backticks.rs"
apt-get install -y python3
cargo test
open "tests/functions.rs"
export USER=testuser && cargo test --test functions env_var_functions
export USER=testuser && cargo test --test integration env_var_functions
export USER=testuser && cargo test
