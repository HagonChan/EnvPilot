ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.65.0 -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.65.0 -y
source $HOME/.cargo/env
cargo test --workspace
cargo update
cargo test --workspace
cargo update -p yoke --precise 0.7.0
rustup update
rustup install stable
rustup default stable && rustc --version
rustup override set stable
rustc --version
cargo test --workspace
cargo clean && cargo build --workspace
open "Cargo.toml"
open "helix-core/Cargo.toml"
edit 'unicode-general-category = "0.6"' 'unicode-general-category = "0.7"' True
cargo clean && cargo build --workspace
edit 'unicode-general-category = "0.7"' 'unicode-general-category = "1.0.0"' True
cargo clean && cargo build --workspace
cargo build --workspace --verbose
rustup override set 1.65.0
rustc --version
cargo clean && cargo build --workspace
cargo update -p gix-quote --precise 0.4.14
cargo clean && cargo build --workspace
cargo update -p icu_properties_data --precise 1.0.0
open "helix-vcs/Cargo.toml"
edit 'gix = { version = "0.43.0", default-features = false , optional = true }' 'gix = { version = "0.42.0", default-features = false , optional = true }' True
cargo clean && cargo build --workspace
cargo update -p imara-diff --precise 0.1.5
cargo clean && cargo build --workspace
cargo update -p textwrap --precise 0.15.0
open "helix-core/Cargo.toml"
edit 'textwrap = "0.16.0"' 'textwrap = "0.15.0"' True
cargo clean && cargo build --workspace
cargo update -p toml_edit --precise 0.19.14
edit 'toml = "0.7"' 'toml = "0.6"' True
cargo clean && cargo build --workspace
cargo update -p home --precise 0.5.5
cargo clean && cargo build --workspace
cargo update -p mio --precise 0.8.8
cargo update -p mio@1.0.4 --precise 0.8.8
open "helix-view/Cargo.toml"
edit 'tokio = { version = "1", features = ["rt", "rt-multi-thread", "io-util", "io-std", "time", "process", "macros", "fs", "parking_lot"] }' 'tokio = { version = "0.3", features = ["rt", "rt-multi-thread", "io-util", "io-std", "time", "process", "macros", "fs", "parking_lot"] }' True

