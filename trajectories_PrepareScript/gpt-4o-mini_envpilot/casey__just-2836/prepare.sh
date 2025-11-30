
find_file '*.yml' .
find_file '*.yml' .github/workflows
find_file Cargo.toml .
open "Cargo.toml"
apt-get update && apt-get install -y build-essential libssl-dev pkg-config ripgrep shellcheck
rustup --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
cargo test
. $HOME/.cargo/env
cargo test
