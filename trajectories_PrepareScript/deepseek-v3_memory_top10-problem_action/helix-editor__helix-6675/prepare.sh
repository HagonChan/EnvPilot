ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "rust-toolchain.toml"
apt-get update && apt-get install -y git tree-sitter build-essential pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
source $HOME/.cargo/env
rustc --version
cargo build
git config --global http.postBuffer 1048576000
cargo build
cargo install --force cargo-config
mkdir -p ~/.cargo && echo '[net]\ngit-fetch-with-cli = true' > ~/.cargo/config.toml
cargo build
echo '[net]' > ~/.cargo/config.toml && echo 'git-fetch-with-cli = true' >> ~/.cargo/config.toml
cargo build
cargo build --offline
cargo build
ls -la
cargo build --locked
cargo build --offline --locked
mkdir -p ~/.cargo/registry/cache/github.com-1ecc6299db9ec823
cargo test --workspace
