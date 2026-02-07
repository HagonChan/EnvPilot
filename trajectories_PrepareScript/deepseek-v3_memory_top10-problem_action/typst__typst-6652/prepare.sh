ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libssl-dev pkg-config gcc gcc-multilib
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
source $HOME/.cargo/env
rustc --version
cargo test --workspace --no-fail-fast
cargo test -p typst-tests --test tests -- --nocapture
cargo test -p typst-tests --test tests
