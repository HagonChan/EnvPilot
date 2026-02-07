ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
sudo apt-get update && sudo apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
apt-get update && apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.77 -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.77 -y
source $HOME/.cargo/env
cargo test
open "tests/functions.rs" 86
export USER=$(whoami) && unset ZADDY && unset XYZ
apt-get install -y bash
open "tests/backticks.rs" 16
apt-get install -y python3
cargo test
