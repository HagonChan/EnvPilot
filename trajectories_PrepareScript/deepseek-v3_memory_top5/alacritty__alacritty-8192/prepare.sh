ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y ca-certificates && update-ca-certificates
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh && chmod +x rustup.sh && ./rustup.sh -y
apt-get install -y rustc cargo
rustc --version && cargo --version
open "alacritty/Cargo.toml"
apt-get install -y libgl1-mesa-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libssl-dev
cargo build
apt-get install -y pkg-config
cargo build
apt-get install -y libfontconfig1-dev
cargo build
apt-get install -y g++
cargo build
cargo test
