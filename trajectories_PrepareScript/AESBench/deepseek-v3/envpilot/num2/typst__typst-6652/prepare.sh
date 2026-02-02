ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt update && sudo apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386 libssl-dev pkg-config gcc
apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386 libssl-dev pkg-config gcc
apt install -y libssl-dev pkg-config gcc
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.88.0
source $HOME/.cargo/env
rustup install 1.88.0
rustup default 1.88.0
rustc --version && cargo --version
cargo install --locked typst-cli
cargo install --locked typst-cli --version 0.14.0
cargo test --workspace --no-fail-fast
