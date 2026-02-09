ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version && cargo --version
cargo build
cargo test
