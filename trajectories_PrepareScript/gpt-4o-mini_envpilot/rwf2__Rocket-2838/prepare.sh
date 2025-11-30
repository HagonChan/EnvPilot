ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
curl https://sh.rustup.rs -sSf | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
cargo test
. "$HOME/.cargo/env"
cargo test
apt-get install -y libssl-dev clang pkg-config
cargo test
