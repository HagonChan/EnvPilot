ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get install -y curl tar libssl-dev gcc make
apt-get update
apt-get install -y curl tar libssl-dev gcc make
curl https://sh.rustup.rs -sSf | sh -s -- -y
source "$HOME/.cargo/env"
cargo install --locked --path ./forc
cargo test
