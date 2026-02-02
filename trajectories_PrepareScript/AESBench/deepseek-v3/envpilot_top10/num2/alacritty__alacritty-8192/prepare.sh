ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libx11-dev libxrandr-dev libfontconfig1-dev libfreetype6-dev libxi-dev libxcursor-dev libxkbcommon-dev libwayland-dev pkg-config cmake gcc
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version && cargo --version
open "alacritty/Cargo.toml"
cargo build --release
cargo build --release
apt-get update && apt-get install -y ca-certificates
export CARGO_HTTP_MULTIPLEXING=false && cargo build --release
mkdir -p ~/.cargo && echo '[source.crates-io]
replace-with = "ustc"

[source.ustc]
registry = "https://mirrors.ustc.edu.cn/crates.io-index"' > ~/.cargo/config.toml
cargo build --release
apt-get install -y g++
cargo build --release
cargo test
