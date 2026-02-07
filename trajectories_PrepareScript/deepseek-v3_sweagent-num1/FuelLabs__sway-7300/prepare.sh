ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
rustup install 1.86.0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal
curl -LO https://sh.rustup.rs
apt-get install -y wget
wget https://sh.rustup.rs -O rustup-init.sh && chmod +x rustup-init.sh && ./rustup-init.sh -y --default-toolchain stable --profile minimal
apt-get install -y rustc cargo
rustc --version && cargo --version
cargo build
rm Cargo.lock && cargo update
cargo build --locked
which rustup
wget https://sh.rustup.rs -O rustup-init.sh && chmod +x rustup-init.sh && ./rustup-init.sh -y --default-toolchain stable --profile minimal
open "Cargo.toml"
cargo build --locked
edit 'fuels-core = "0.74"' 'fuels-core = "0.73"'
cargo build --locked
cargo build
cargo build --workspace --exclude fuels-core
cargo build --offline
