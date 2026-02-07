ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install 1.86.0
. $HOME/.cargo/env
rustup toolchain install 1.86.0
rustup default 1.86.0
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
cargo install fuel-core
cargo install fuel-core --version 0.46.0
which fuel-core
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0 --git-fetch-with-cli
cargo config --global net.git-fetch-with-cli true
mkdir -p ~/.cargo && echo '[net]
git-fetch-with-cli = true' > ~/.cargo/config.toml
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0
cargo test --no-fail-fast
