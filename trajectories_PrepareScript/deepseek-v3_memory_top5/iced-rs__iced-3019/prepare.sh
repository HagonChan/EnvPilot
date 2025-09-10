find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Cargo.toml
open "/testbed/Cargo.toml"
find_file rust-toolchain.toml
find_file README.md
open "/testbed/README.md"
find_file INSTALL.md
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
rustc --version
cargo install cross
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo install cross
cd /testbed && cargo test
