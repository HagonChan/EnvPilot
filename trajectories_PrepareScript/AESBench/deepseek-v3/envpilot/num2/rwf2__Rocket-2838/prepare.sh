ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version
cargo build
cargo test
