ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "ci/install-rust.sh"
bash ci/install-rust.sh stable
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -O - https://sh.rustup.rs | sh -s -- -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo test --locked
bash ci/install-rust.sh stable
cargo test --locked
apt update && apt install -y build-essential
cargo test --locked
