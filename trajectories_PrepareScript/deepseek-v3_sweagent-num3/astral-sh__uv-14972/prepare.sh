ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
search_file test .github/workflows/ci.yml
goto 200
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install cargo-nextest
cargo install cargo-nextest --version 0.9.114
rustup update stable
cargo install cargo-nextest
rustc --version
rustup default stable
cargo install cargo-nextest --version 0.9.114 --locked
apt-get install -y build-essential pkg-config libssl-dev
cargo install cargo-nextest --version 0.9.114 --locked
cargo nextest run
