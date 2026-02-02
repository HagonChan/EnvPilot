ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
source $HOME/.cargo/env
ls -la
cargo build
apt-get update && apt-get install -y build-essential pkg-config libssl-dev
cargo build
cargo test
open "README.md"
open ".github/workflows/ci.yml"
search_file fuel-core .github/workflows/ci.yml
open "Cargo.toml"
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -L -o fuel-core.tar.gz
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -o fuel-core.tar.gz
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -o fuel-core.tar.gz
cargo install --locked fuel-core-bin
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -o fuel-core.tar.gz
tar -xzf fuel-core.tar.gz && mv fuel-core-0.44.0-x86_64-unknown-linux-gnu/fuel-core /usr/local/bin/ && chmod +x /usr/local/bin/fuel-core
fuel-core --version
cargo test
cargo test -- --list
cargo test --lib -p sway-core
cargo test --lib -p sway-types
cargo test --lib -p sway-error
cargo test --lib -p sway-lsp
cargo test --lib -p sway-parse
cargo test --lib -p sway-utils
cargo test --tests
cargo test --tests -- --list
cargo test --tests -- --list | head -n 20 | grep -oP '^\w+' | xargs cargo test --tests --
cargo test --tests abi_comments
cargo test --tests abi_mod
cargo test --lib -p swayfmt
cargo test --lib -p sway-core
cargo test --lib -p sway-lsp
cargo test --lib -p sway-parse
cargo test --lib -p sway-types
cargo test --lib -p sway-error
cargo test --lib -p sway-utils
cargo test --tests
