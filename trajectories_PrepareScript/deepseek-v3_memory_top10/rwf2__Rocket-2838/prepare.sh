ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl -L https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init -o rustup-init && chmod +x rustup-init && ./rustup-init -y
rustup toolchain install nightly
source $HOME/.cargo/env
rustup toolchain install nightly
rustup show
cargo build
cargo clean && cargo build --verbose
open "Cargo.toml"
open "core/lib/Cargo.toml"
cargo build --features default
apt-get install -y build-essential
cargo build --features default
cargo test
