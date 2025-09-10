ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "ci/install-rust.sh"
rustup install 1.74.0 && rustup default 1.74.0
apt-get update && apt-get install -y curl && curl https://sh.rustup.rs -sSf | sh -s -- -y && . $HOME/.cargo/env
rustup install 1.74.0 && rustup default 1.74.0
rustc --version && cargo --version
open "Cargo.toml"
cargo build
cargo build
apt-get update && apt-get install -y libssl-dev pkg-config
cargo build
CARGO_HTTP_INSECURE=true cargo build
apt-get install -y ca-certificates && update-ca-certificates
cargo test
find_file .cargo/config.toml
cargo test --offline
