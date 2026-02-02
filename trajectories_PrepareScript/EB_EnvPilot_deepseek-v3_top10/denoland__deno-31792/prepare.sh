ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "rust-toolchain.toml"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
curl https://sh.rustup.rs -sSf | sh -s -- -y
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init
apt-get install -y wget
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init

