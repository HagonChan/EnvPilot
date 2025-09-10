ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y curl && curl https://sh.rustup.rs -sSf | sh -s -- -y && . $HOME/.cargo/env
curl https://sh.rustup.rs -sSf | sh -s -- -y && . $HOME/.cargo/env
apt-get install -y build-essential
rustc --version && cargo --version
open "alacritty/Cargo.toml"
cargo build
apt-get install -y pkg-config
cargo build
apt-get install -y libfontconfig1-dev
cargo build
cargo test

