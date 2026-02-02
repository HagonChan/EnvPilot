ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
cargo test
rustup update
cargo clean
cargo test
open "Cargo.toml"
open "core/lib/Cargo.toml"
apt-get install -y pkg-config libssl-dev
cargo test --examples --contrib --core
cargo test --manifest-path core/lib/Cargo.toml
apt-get install -y build-essential
cargo test --manifest-path core/lib/Cargo.toml
