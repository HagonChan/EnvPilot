ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
source $HOME/.cargo/env
rustc --version && cargo --version
apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386 libssl-dev pkg-config gcc
dpkg --add-architecture i386 && apt update
apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386 libssl-dev pkg-config gcc
apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386 && apt install -y libssl-dev pkg-config gcc
gcc --version && pkg-config --version && openssl version
open "Cargo.toml"
cargo install --locked --path crates/typst-cli
~/.cargo/bin/typst --version
cargo test --workspace
