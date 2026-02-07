ls -a
ls -a .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
curl --proto '=https' --tlsv1.2 -sSf --connect-timeout 30 https://just.systems/install.sh | bash -s -- --to /usr/local/bin
apt-get install -y just
apt-get install -y cargo
git clone https://github.com/casey/just.git && cd just && cargo build --release
cargo install cargo-nextest
cargo install cargo-nextest --version 0.9.85
cargo test
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
rustc --version && cargo --version
cargo test
