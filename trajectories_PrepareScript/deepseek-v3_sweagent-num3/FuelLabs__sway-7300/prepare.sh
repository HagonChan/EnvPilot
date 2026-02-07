ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.86.0
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.86.0
source $HOME/.cargo/env
cargo build --workspace
apt-get update && apt-get install -y build-essential pkg-config libssl-dev
cargo build --workspace
cargo test --workspace
cargo install fuel-core --version 0.26.0
open "README.md"
curl -L https://github.com/FuelLabs/fuel-core/releases/download/v0.26.0/fuel-core-0.26.0-linux-x86_64.tar.gz | tar -xz && mv fuel-core-0.26.0-linux-x86_64/fuel-core /usr/local/bin/
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/tags/v0.26.0 | grep -E 'browser_download_url.*linux-x86_64.tar.gz' | cut -d '"' -f 4
curl -L https://github.com/FuelLabs/fuel-core/releases/download/v0.26.0/fuel-core-0.26.0-linux-x86_64.tar.gz | tar -xz && mv fuel-core-0.26.0-linux-x86_64/fuel-core /usr/local/bin/
which fuel-core || echo "fuel-core not found in PATH"
find_file '*fuel-core*'
open "docs/reference/src/documentation/introduction/installation/fuel-core.md"
apt-get install -y cmake clang libclang-dev
cargo install fuel-core
cargo install fuel-core --version 0.46.0
cargo test --workspace --exclude forc
