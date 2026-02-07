ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
sudo apt-get update && sudo apt-get install -y libxkbcommon-dev libgtk-3-dev
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace -- --ignored
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt-get install -y wget
wget -qO- https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
cargo test --verbose --workspace -- --ignored
cargo update
cargo test --verbose --workspace -- --ignored
cargo test --verbose --workspace --all-features -- --ignored
cargo clean
cargo test --verbose --workspace --all-features -- --ignored
rustc --version
rustup default stable
rustup install 1.85
rustup default 1.85
cargo clean
cargo test --verbose --workspace --all-features -- --ignored
cargo test --verbose --workspace --all-features
open "Cargo.toml"
cargo test --verbose --workspace --no-default-features
cargo test --verbose --workspace --features default
cargo test --verbose --workspace --no-default-features --features "core"
cargo test --verbose --package iced_core --package iced_widget
rustup show
cargo clean
cargo test --verbose --package iced_core --package iced_widget
cargo test --verbose --package iced_core --package iced_widget --offline
apt-get install -y build-essential
cargo clean
cargo test --verbose --package iced_core --package iced_widget
cargo test --verbose --workspace --all-features -- --ignored
