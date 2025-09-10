ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libssl-dev pkg-config gcc-multilib
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.88.0
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.88.0
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.88.0
. "$HOME/.cargo/env" && rustc --version && cargo --version
cargo install --locked typst-cli
cargo test --workspace --no-fail-fast
