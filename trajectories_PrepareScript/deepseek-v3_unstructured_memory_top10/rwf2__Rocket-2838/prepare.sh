ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup-init.sh && sh rustup-init.sh -y --default-toolchain stable
rustup toolchain install nightly
source $HOME/.cargo/env
rustup toolchain install nightly
cargo build
cargo update
cargo build
apt-get install -y build-essential
cargo build
cargo test
