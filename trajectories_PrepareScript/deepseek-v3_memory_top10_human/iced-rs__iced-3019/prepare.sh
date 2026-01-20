ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install beta && rustup install 1.85
source $HOME/.cargo/env
rustup install beta && rustup install 1.85
rustup install beta
rustup install 1.85
cargo test --verbose --workspace --ignored
cargo test --verbose --workspace -- --ignored
apt-get install -y libwayland-dev
cargo test --verbose --workspace -- --ignored
apt-get install -y libclang-dev pkg-config
cargo test --verbose --workspace -- --ignored
apt-get install -y libvulkan-dev libgl1-mesa-dev
cargo test --verbose --workspace -- --ignored
apt-get install -y cmake libssl-dev
cargo test --verbose --workspace -- --ignored
