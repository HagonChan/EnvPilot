

ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yml" 1
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace -- --ignored
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
cargo test --verbose --workspace

cargo test --verbose --workspace
