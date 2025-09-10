ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "README.md"
open "guide/src/guide/installation.md"
apt-get update && apt-get install -y build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install mdbook
mdbook --version
cargo test
