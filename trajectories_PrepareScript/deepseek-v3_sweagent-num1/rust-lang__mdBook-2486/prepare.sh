ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "ci/install-rust.sh"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup.sh && sh rustup.sh -y
curl --insecure --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget --no-check-certificate https://sh.rustup.rs -O rustup.sh && sh rustup.sh -y
apt update && apt install -y wget
wget --no-check-certificate https://sh.rustup.rs -O rustup.sh && sh rustup.sh -y
apt update && apt install -y rustc cargo
rustc --version && cargo --version
cargo test --locked
