ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
cargo build
apt-get install -y build-essential
cargo build
cargo test
