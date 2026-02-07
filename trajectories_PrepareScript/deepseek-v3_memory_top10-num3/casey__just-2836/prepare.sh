ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Cargo.toml"
rustup install 1.77 && rustup default 1.77
apt-get update && apt-get install -y curl && curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.77 && rustup default 1.77
source $HOME/.cargo/env
rustup install 1.77 && rustup default 1.77
apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
rustc --version
cargo test
apt-get install -y bash
echo $PATH
RUST_BACKTRACE=1 cargo test
ls -la /bin/sh
ln -sf /bin/bash /bin/sh
ls -la /bin/sh
cargo test
open "tests/backticks.rs" 3
apt-get install -y python3
cargo test
open "tests/functions.rs" 86
export USER=$(whoami) && cargo test
