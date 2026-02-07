ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt update && sudo apt install -y libssl-dev pkg-config gcc-multilib
apt update && apt install -y libssl-dev pkg-config gcc-multilib
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y --default-toolchain 1.88.0
apt install -y wget
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y --default-toolchain 1.88.0
. $HOME/.cargo/env
rustc --version && cargo --version
cargo test --workspace --no-fail-fast
