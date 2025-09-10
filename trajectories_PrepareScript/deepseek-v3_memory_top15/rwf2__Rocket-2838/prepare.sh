ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf -o rustup-init.sh https://sh.rustup.rs && chmod +x rustup-init.sh && ./rustup-init.sh -y
which rustc || which cargo
open "README.md"
curl --proto '=https' --tlsv1.2 -sSf -o rustup-init https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y
rustc --version && cargo --version
source $HOME/.cargo/env
rustc --version && cargo --version
cargo build
cargo test
