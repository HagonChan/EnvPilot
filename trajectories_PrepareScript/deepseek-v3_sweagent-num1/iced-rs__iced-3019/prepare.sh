ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
sudo apt-get update && sudo apt-get install -y libxkbcommon-dev libgtk-3-dev
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace -- --ignored && cargo test --verbose --workspace --all-features -- --ignored
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -O rustup.sh https://sh.rustup.rs && sh rustup.sh -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
cargo --version
cargo test --verbose --workspace -- --ignored && cargo test --verbose --workspace --all-features -- --ignored

