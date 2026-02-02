ls
open "README.md"
open "Cargo.toml"
find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
open "CONTRIBUTING.md"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version && cargo --version
apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev gcc make pkg-config libssl-dev
cargo build
cargo test
