ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt update && sudo apt install -y libssl-dev pkg-config gcc
apt update && apt install -y libssl-dev pkg-config gcc
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.88.0
apt install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.88.0
source $HOME/.cargo/env
rustc --version && cargo --version
cargo test --workspace --no-fail-fast
